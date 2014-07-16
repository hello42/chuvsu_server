class HomeController < ApplicationController
  def welcome
  end

  def error
    raise 'for errbit test'
  end
end
