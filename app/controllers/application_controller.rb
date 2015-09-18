class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include TheRole::Controller
  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
end
