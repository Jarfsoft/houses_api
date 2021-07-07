require 'rails_helper'

RSpec.describe Device, type: :model do
  context 'validation tests' do
    it 'ensures to load all devices' do
      devices = Device.all
      expect(devices.length).to eq(9)
    end
  end
end
