class UsersController < ApplicationController
  def index
    @users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded users', data: @users }, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded user', data: @user }, status: :ok
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: { status: 'SUCCESS', message: 'Saved user', data: @user }, status: :ok
    else
      render json: { status: 'ERROR', message: 'User not saved', data: @user.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy
    render json: { status: 'SUCCESS', message: 'Saved deleted', data: @user }, status: :ok
  end

  private

  def user_params
    params.permit(:name)
  end
end
