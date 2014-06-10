class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def require_login
    if current_user
      current_user
    else
      redirect_to '/login/user'
    end
  end

  helper_method :current_user

  private
  
  def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user ||= User.first
  end
end

  #def require_login
   # if current_user
    #  current_user
    #else
    #  redirect_to '/login/user'
    #end
  #end

  #helper_method :current_user, :is_l

  #private
  
  #def is_logged_in
  #!current_user.nil?
  #end

  #def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
   # @current_user ||= User.first
  #end
#end


end
