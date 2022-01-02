class WelcomeController < ApplicationController
  skip_before_action :authenticate

  def index
    render json: 'Olá'
  end
end