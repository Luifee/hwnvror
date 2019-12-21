class SiteController < ApplicationController

#        before_action :authenticate_user!
#        before_action :configure_permitted_parameters, if: :devise_controller?

  def send_email
	  UserMailer.welcome_email().deliver_now
	  redirect_to "/site/test/", notice: "測試信已寄出"
  end

  private
  def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
          devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

end
