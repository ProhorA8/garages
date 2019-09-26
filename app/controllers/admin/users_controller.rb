# frozen_string_literal: true

class Admin
  class UsersController < Admin::BaseController
    before_action :set_user, only: %i[show edit update destroy]

<<<<<<< HEAD
    def index
      # @users = User.paginate(page: params[:page],per_page: 4)
      @users = User .order('name').page(params[:page]).per(3)
    end
=======
  def index
    @users = User .order("name").page(params[:page]).per(3)
  end

  def show
  end

  def new
    @user = User.new
  end


  def edit
  end
>>>>>>> 6dfbd78afab8ddf9b929bc9c11c7b05dc2bae2e0

    def show; end

    def new
      @user = User.new
    end

    def edit; end

    def create
      @user = User.new(user_params)
      if @user.save
        # lavrik - url helper - more short
        redirect_to 'http://localhost:3000/admin/users'
      else
        render 'new'
      end
    end

    def update
      # lavrik - if not update
      # # if @user.update(user_params)
      redirect_to controller: 'admin/users', action: 'index'
    end

    def destroy
      @user.destroy
      redirect_to controller: 'admin/users', action: 'index'
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end
  end
end
