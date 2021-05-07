require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    let(:user) { FactoryBot.create(:user) }
    it 'ensure name is present' do
      user.name = nil
      expect(user.save).to eq(false)
    end

    it 'ensures name length is >= 3 characters' do
      expect(user.name.length).to be >= 3
    end

    it 'ensure email is present' do
      user.email = nil
      expect(user.save).to eq(false)
    end

    it 'ensure password is present' do
      user.password = nil
      expect(user.save).to eq(false)
    end

    it 'ensures password length is >=6 characters' do
      user.password = 'pass'
      expect(user.password.length >= 6).to be_falsey
    end
  end

  context 'associations' do
    it 'should have many appointments' do
      t = User.reflect_on_association(:appointments)
      expect(t.macro).to eq(:has_many)
    end
  end
end
