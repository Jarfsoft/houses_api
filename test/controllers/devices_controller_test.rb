require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest
  test 'index action should be success' do
    get devices_url
    assert_response :success
  end
end
