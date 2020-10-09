class ToppagesController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @categories = Category.all
    @posts = @q.result.includes(:categories)
  end
  
  def search
    @q = Post.search(search_params)
    @posts = @q.result.includes(:categories).order(id: :desc).page(params[:page]).per(5)
  end
  
  private
  def search_params
    params.require(:q).permit(:title_or_content_or_author_cont, :average_gteq, :categories_id_eq)
    #:average_lt,追加しても良い
  end
end