# app/controllers/radios_controller.rb
class RadiosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_radio, only: %i[show edit update destroy]

  def index
    @radios = Radio.all
  end

  def show; end

  def new
    @radio = current_user.radios.build
    %w[wp ig fb TikTok Twitter Telegram].each do |social_type|
      @radio.socials.build(social_type:)
    end
  end

  def edit; end

  def create
    @radio = current_user.radios.build(radio_params)
    if @radio.save
      redirect_to @radio, notice: 'Radio was successfully created.'
    else
      render :new
    end
  end

  def update
    if @radio.update(radio_params)
      redirect_to @radio, notice: 'Radio was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @radio.destroy
    redirect_to radios_url, notice: 'Radio was successfully destroyed.'
  end

  private

  def set_radio
    @radio = Radio.find(params[:id])
  end

  def radio_params
    params.require(:radio).permit(:title, :url_stream, :logo, :font_type, :font_color, :player_bg_color,
                                  :menu_bg_color, :icon_color, socials_attributes: %i[id social_type url_socials], schedule_attributes: [:id, { programings_attributes: %i[id day] }])
  end
end
