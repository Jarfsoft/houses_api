class UserDevicesController < ApplicationController
  def index
    @user_devices = UserDevice.all
    render json: @user_devices
  end

  def show
    @user_device = UserDevice.find(params[:id])
    render json: @user_device
  end

  def create
    @user_device = UserDevice.new(user_device_params)

    if @user_device.save
      render json: @user_device
    end
  end

  def destroy
    @user_device = UserDevice.find(params[:id])
    @user_device.destroy
    render json: @user_device
  end

  private

  def user_device_params
    params.permit(:user_id, :device_id)
  end
end
