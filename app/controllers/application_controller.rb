class ApplicationController < ActionController::Base

  def new
  end

  def create
    render plain: params[:username].inspect
    render plain: params[:email]
  end

end
