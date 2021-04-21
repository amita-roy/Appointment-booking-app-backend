require 'rails_helper'

RSpec.describe SelectedService, type: :model do
  context 'associations' do
    it 'should belongs to an appointment' do
      t = SelectedService.reflect_on_association(:appointment)
      expect(t.macro).to eq(:belongs_to)
    end
    it 'should belongs to a service' do
      t = SelectedService.reflect_on_association(:service)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
