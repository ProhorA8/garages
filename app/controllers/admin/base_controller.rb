# frozen_string_literal: true

class Admin
  class BaseController < ApplicationController
    layout 'admin_lte_2'
    # before_action :authenticate_user!
  end
end
