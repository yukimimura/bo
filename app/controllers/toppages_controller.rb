class ToppagesController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @categories = Category.all
  end
  
  def search
    @q = Post.search(search_params)
    @posts = @q.result.includes(:categories).order(id: :desc).page(params[:page]).per(5)
    @search_count = @q.result.includes(:categories)
    @categories = Category.all
  end
  
  def review_sort
    @q = Post.search(search_params)
    @posts = @q.result.includes(:categories).order(average: :desc).page(params[:page]).per(5)
    @search_count = @q.result.includes(:categories)
    @categories = Category.all
  end
  
  def fav_sort
    @q = Post.search(search_params)
    @posts = @q.result.includes(:categories).order(fav: :desc).page(params[:page]).per(5)
    @search_count = @q.result.includes(:categories)
    @categories = Category.all
  end
  
  def sample
  end
  
  private
  def search_params
    params.require(:q).permit(:title_or_content_or_author_cont, :average_gteq, :categories_id_eq)
  end
end