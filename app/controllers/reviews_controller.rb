class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @post = Post.find(params[:post_id])
    @reviews = @post.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      @post = Post.find(params[:post_id])
      @post.average = @post.avg_score
      @post.save
      redirect_to post_path(@review.post)
    else
      @post = Post.find(params[:post_id])
      @reviews = @post.reviews
      render "posts/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:post_id, :score, :content)
  end
end