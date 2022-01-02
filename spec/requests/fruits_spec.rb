require 'rails_helper'

RSpec.describe 'Fruits', type: :request do
  let(:banana) { create(:fruit) }

  context 'GET' do
    it 'all fruits in db' do
      get fruits_path, headers: { 'Authorization' => 'Basic YWRtaW46YWRtaW4='}
      expect(response).to have_http_status(200)
    end
    it 'one fruit' do
      get fruit_path(banana.name), headers: { 'Authorization' => 'Basic YWRtaW46YWRtaW4='}
      expect(response).to have_http_status(200)
    end
  end
end