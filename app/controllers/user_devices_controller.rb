class UserDevicesController < ApplicationController
  def index
    @user_devices = UserDevice.all
    render json: { status: 'SUCCESS', message: 'Loaded relations', data: @user_devices }, status: :ok
  end

  def show
    @user_device = UserDevice.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded relation', data: @user_device }, status: :ok
  end

  def create
    @user_device = UserDevice.new(user_device_params)

    if @user_device.save
      render json: { status: 'SUCCESS', message: 'Saved relation', data: @user_device }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Relation not saved', data: @user_device.errors },
             status: :unprocessable_entity
    end
  end

  def destroy
    @user_device = UserDevice.find(params[:id])
    @user_device.destroy
    render json: { status: 'SUCCESS', message: 'Deleted relation', data: @user_device }, status: :ok
  end

  private

  def user_device_params
    params.permit(:user_ID, :device_ID)
  end
end
