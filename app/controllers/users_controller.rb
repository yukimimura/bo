class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :followings, :followers, :likes, :edit]
  before_action :set_user, only: [:show, :followings, :followers, :likes]
  
  def show
    counts(@user)
    @reviews = @user.reviews.order(id: :desc).page(params[:page]).per(3)
    set_dm
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
    @followings = @user.followings.page(params[:page]).per(10)
    counts(@user)
    set_dm
  end
  
  def followers
    @followers = @user.followers.page(params[:page]).per(10)
    counts(@user)
    set_dm
  end
  
  def likes
    @posts = @user.myfavorites.order(id: :desc).page(params[:page]).per(5)
    counts(@user)
    set_dm
  end
  
  def user_search
    if params[:username].present? 
      @users = User.where('username LIKE ?', "%#{params[:username]}%").page(params[:page])
    else
      @users = User.none.page(params[:page])
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :image)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def set_dm
     # DM機能
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      unless @isRoom
        @room = Room.new
        @entry = Entry.new
      end
    end
  end
end
