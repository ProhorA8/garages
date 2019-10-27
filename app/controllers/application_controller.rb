# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def nav_menu
    @users = User.all
  end

end
