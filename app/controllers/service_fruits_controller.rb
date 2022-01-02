class ServiceFruitsController < ApplicationController
  def show
    response = RestClient.get "https://www.fruityvice.com/api/fruit/#{params[:name]}"
    response = JSON.parse(response.body)
    @fruit = Fruit.new(name: response['name'],
                       carbohydrates: response['nutritions']['carbohydrates'],
                       protein: response['nutritions']['protein'],
                       fat: response['nutritions']['fat'])
    if @fruit.save
      render json: @fruit, only: %i[name carbohydrates protein fat]
    else
      @fruit.errors
    end
  end
end