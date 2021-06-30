class UserDevicesController < ApplicationController
  def index
    @user_devices = UserDevice.all
    render json: @user_devices
  end
end
