class ApplicationController < ActionController::Base
  before_action :clear_flash

  def clear_flash
    flash.clear if flash.any?
  end
end
