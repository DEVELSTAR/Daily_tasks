# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # skip_before_action :verify_authenticity_token, only: :create

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    user = User.find_by(email: params[:user][:email])
    if user&.valid_password?(params[:user][:password])
      sign_in(user) # This signs in the user
      render json: { message: 'Logged in successfully.' }, status: :ok
    else
      render json: { error: 'Invalid email or password.' }, status: :unauthorized
    end
  end


  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # DELETE /users/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
  end

  protected

  def respond_to_on_destroy
    render json: { message: 'Logged out successfully.' }, status: :no_content
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end