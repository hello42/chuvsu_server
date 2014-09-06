class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #http_basic_authenticate_with name: "dhh", password: "secret"
  before_action :authenticate_user!, except: [:index, :show]
end

