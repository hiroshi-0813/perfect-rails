class ApplicationController < ActionController::Base
  skip_before_action :require_login, only: [:new, :create]
  def require_login
    redirect_to access_denied_path if
    params[:token].blank?    
  end
end
