require 'rails_helper'

RSpec.describe 'Service', type: :request do
  it 'should show all the services from salon' do
    get 'http://localhost:3000/api/v1/services'
    expect(response).to have_http_status(200)
  end

  it 'should return services json data' do
    get 'http://localhost:3000/api/v1/services'
    expect(response.content_type).to eq('application/json; charset=utf-8')
  end
end
