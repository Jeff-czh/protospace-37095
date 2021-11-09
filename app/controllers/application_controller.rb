class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #authenticate_user!は、処理がよばれた段階で、ユーザーがログインしていなければ、そのユーザーをログイン画面に遷移させます。
  before_action :authenticate_user!

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end