module Api
  class RadiosController < ApplicationController
    def show
      radio = Radio.find(params[:id])
      render json: radio, include: %i[socials schedule]
    end
  end
end
