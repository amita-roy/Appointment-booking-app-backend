require 'rails_helper'

RSpec.describe Service, type: :model do
  context 'associations' do
    it 'should have many appointments' do
      t = Service.reflect_on_association(:appointments)
      expect(t.macro).to eq(:has_many)
    end
  end
end
