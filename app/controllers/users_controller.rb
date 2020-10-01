class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :followings, :followers]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    counts(@user)
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    
    if @user.update(user_params)
      redirect_to @user, notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end
  
  def followings
    @user = User.find(params[:id])
    @followings = @user.followings.page(params[:page])
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page])
    counts(@user)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
