require 'test_helper'

class UserDevicesControllerTest < ActionDispatch::IntegrationTest
  test 'index action should be success' do
    get user_devices_url
    assert_response :success
  end

  test 'should create user_device' do
    assert_difference('UserDevice.count') do
      user = User.create(name: '12345678')
      device = Device.create(name: '123', description: '123456', image_url: '123456', price: 1)
      post user_devices_url, params: { user_ID: user.id, device_ID: device.id }
    end

    assert_response :success
  end

  test 'should destroy user_device' do
    user_device = user_devices(:one)
    assert_difference('UserDevice.count', -1) do
      delete user_device_url(user_device)
    end

    assert_response :success
  end
end
