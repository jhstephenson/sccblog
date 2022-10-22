class UsersController < ApplicationController
  before_action :require_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was created successfully"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User was updated successfully"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "User was deleted successfully"
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :role, :cell_phone, :client, :billingrate)
  end

  def require_user
    @user = User.find(params[:id])
  end
end
