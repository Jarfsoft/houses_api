require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'index action should be success' do
    get users_url
    assert_response :success
  end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url, params: { name: '12345678' }
    end

    assert_response :success
  end
end
