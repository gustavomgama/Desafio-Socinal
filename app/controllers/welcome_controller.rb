class WelcomeController < ApplicationController
  def index
    render json: 'Olá'
  end
end