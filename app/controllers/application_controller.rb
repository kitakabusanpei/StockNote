class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  PERMISSIBLE_ATTRIBUTES = %i(name avatar avatar_cache)

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: PERMISSIBLE_ATTRIBUTES)
    devise_parameter_sanitizer.permit(:account_update, keys: PERMISSIBLE_ATTRIBUTES)
  end

  # bom 日本語化 send_csv 使う場合
  def send_csv(csv, options = {})
    bom = "   "
    bom.setbyte(0, 0xEF)
    bom.setbyte(1, 0xBB)
    bom.setbyte(2, 0xBF)
    send_data bom + csv.to_s, options
  end

end
