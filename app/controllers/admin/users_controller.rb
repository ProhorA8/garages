class Admin::UsersController < Admin::BaseController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
   # @users = User.paginate(page: params[:page],per_page: 4)
    @users = User .order("name").page(params[:page]).per(3)
  end

  def show
  end

  def new
    @user = User.new
  end


  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # lavrik - url helper - more short
      redirect_to 'http://localhost:3000/admin/users'
      #:controller => 'admin/users', :action => 'index'
    else
      render 'new'

    end
  end

  def update
    # lavrik - if not update
    #if @user.update(user_params)

      redirect_to :controller => 'admin/users', :action => 'index'
  end
  #end


  def destroy
    @user.destroy

    redirect_to :controller => 'admin/users', :action => 'index'
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

    def user_params
    params.require(:user).permit(:name,:email)
  end
    end
