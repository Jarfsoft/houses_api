require 'rails_helper'

RSpec.describe 'Devices', type: :request do
  describe 'GET /index' do
    it 'renders the index template' do
      get devices_url
      assert_response :success
    end
  end
end
