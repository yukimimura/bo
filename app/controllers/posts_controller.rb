class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    if user_signed_in?
      @review = Review.new
    else
      @review = Review.new(content:"※レビューを書くにはログインが必要です。")
    end
    @reviews = @post.reviews.order(id: :desc).page(params[:page]).per(3)
  end
  
  #params書く際にはcarrierwaveの５を参照必須
end
