require 'rails_helper'

RSpec.describe 'UserDevices', type: :request do
  describe 'controllers test' do
    it 'renders the index template' do
      get user_devices_url
      assert_response :success
    end

    it 'should create user_device' do
      assert_difference('UserDevice.count') do
        user = User.create(name: '12345678')
        device = Device.create(name: '123', description: '123456', image_url: '123456', price: 1)
        post user_devices_url, params: { user_ID: user.id, device_ID: device.id }
      end

      assert_response :success
    end

    it 'should destroy user_device' do
      user = User.create(name: '12345678')
      device = Device.create(name: '123', description: '123456', image_url: '123456', price: 1)
      user_device = UserDevice.create(user_ID: user.id, device_ID: device.id)
      assert_difference('UserDevice.count', -1) do
        delete user_device_url(user_device)
      end

      assert_response :success
    end
  end
end
