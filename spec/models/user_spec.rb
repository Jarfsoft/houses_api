require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presece' do
      user = User.new().save
      expect(user).to eq(false)
    end

    it 'ensures name is at least 6 characters long' do
      user = User.new(name: '1234').save
      expect(user).to eq(false)
    end

    it 'ensures name is not longer than 25 characters' do
      user = User.new(name: '12345678910111213141516171').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(name: '123456').save
      expect(user).to eq(true)
    end
  end
end
