class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.  <--- There it is to fix the CSRF issue
  # protect_from_forgery with: :exception <-- Original.
  protect_from_forgery with: :null_session  # <-- Fixed.
end
