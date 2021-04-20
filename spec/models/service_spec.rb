require 'rails_helper'

RSpec.describe Service, type: :model do
  context 'associations' do
    it 'should belongs to an appointment' do
      t = Service.reflect_on_association(:appointment)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
