require 'rails_helper'

RSpec.describe 'Appointment', type: :request do
  context 'if user is not logged in' do
    it 'should have 401 http status for unauthorized access' do
      get 'http://localhost:3000/api/v1/appointments'
      expect(response).to have_http_status(401)
    end
  end

  describe 'if user is logged in' do
    before(:each) do
      @user = FactoryBot.create(:user)
    end
    it 'should return appointments data for logged in user ' do
      get 'http://localhost:3000/api/v1/appointments'
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
  end
end
