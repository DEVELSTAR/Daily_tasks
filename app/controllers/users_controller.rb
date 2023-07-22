class UsersController < ApplicationController
  # before_action :check_user_signed_in
  before_action :check_admin, only: [:update, :delete_user]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete_user
    user = User.find(params[:id])
    if user.destroy
      render json: {message: "User deleted successfully!"}
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def check_user_signed_in
    unless user_signed_in?
      render json: { message: "Please sign in." }, status: :unauthorized
    end
  end

  def check_admin
    unless current_user&.admin?
      render json: { message: "You are not authorized to perform this action." }, status: :unauthorized
    end
  end

  def user_params
    params.require(:user).permit(:name, :user_type, :email, :password)
  end
end