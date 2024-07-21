class ApplicationController < ActionController::Base
  # ユーザー登録時に許可するパラメータを指定
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # sign_up時に許可するパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :gender, :profile, :occupation, :position])
    
    # account_update時に許可するパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :gender])
  end
end
