class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_format

  def set_format
    Thread.current[:format] = request[:format]
  end
end
