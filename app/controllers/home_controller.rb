class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    # Home page logic here
  end
end
