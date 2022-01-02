class FruitsController < ApplicationController
  def index
    @fruits = Fruit.limit(params[:limit])
    render json: @fruits
  end

  def show
    @fruit = Fruit.find_by!(name: params[:name])
    render json: @fruit, only: %i[name carbohydrates protein fat]
  end
end