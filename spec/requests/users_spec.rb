require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'controllers test' do
    it 'renders the index template' do
      get users_url
      assert_response :success
    end

    it 'should create user' do
      assert_difference('User.count') do
        post users_url, params: { name: '12345678' }
      end

      assert_response :success
    end
  end
end
