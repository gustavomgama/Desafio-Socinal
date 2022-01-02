require 'rails_helper'

RSpec.describe 'ServiceFruits', type: :request do
  context 'GET' do
    it '#show with basic auth', :vcr do
      get service_fruit_path('Banana'), headers: { 'Authorization' => 'Basic YWRtaW46YWRtaW4=' }
      expect(response).to have_http_status(200)
      expect(Fruit.count).to be(1)
    end
    it '#show wrong basic auth', :vcr do
      get service_fruit_path('Banana')
      expect(response).to have_http_status(401)
      expect(Fruit.count).to be(0)
    end
  end
end
