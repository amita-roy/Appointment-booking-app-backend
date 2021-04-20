require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context 'associations' do
    it 'should belongs to a user' do
      t = Appointment.reflect_on_association(:user)
      expect(t.macro).to eq(:belongs_to)
    end

    it 'should have many services' do
      t = Appointment.reflect_on_association(:services)
      expect(t.macro).to eq(:has_many)
    end
  end
end
