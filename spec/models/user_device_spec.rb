require 'rails_helper'

RSpec.describe UserDevice, type: :model do
  context 'validation tests' do
    it 'ensures user id presence' do
      Device.new(name: '123456', description: '123456', image_url: '123456', price: 5.1).save
      user_device = UserDevice.new(device_ID: 1).save
      expect(user_device).to eq(false)
    end

    it 'ensures device id presence' do
      User.new(name: '123456').save
      user_device = UserDevice.new(user_ID: 1).save
      expect(user_device).to eq(false)
    end

    it 'ensures user to exist' do
      user_device = UserDevice.new(user_ID: 10).save
      expect(user_device).to eq(false)
    end

    it 'ensures device to exist' do
      user_device = UserDevice.new(device_ID: 10).save
      expect(user_device).to eq(false)
    end

    it 'should save successfully' do
      User.new(name: '123456').save
      Device.new(name: '123456', description: '123456', image_url: '123456', price: 5).save
      user_device = UserDevice.new(user_ID: User.first.id, device_ID: Device.first.id).save
      expect(user_device).to eq(true)
    end
  end
end
