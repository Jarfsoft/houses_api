class DevicesController < ApplicationController
  def index
    @devices = Device.all
    render json: @devices
  end
end
