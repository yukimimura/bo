class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :followings, :followers]
  
  def show
    @user = User.find(params[:id])
    counts(@user)
    @reviews = @user.reviews.order(id: :desc).page(params[:page]).per(3)
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
    @followings = @user.followings.page(params[:page]).per(10)
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page]).per(10)
    counts(@user)
  end
  
  def likes
    @user = User.find(params[:id])
    counts(@user)
    @posts = @user.myfavorites.order(id: :desc).page(params[:page]).per(5)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :image)
  end
end
