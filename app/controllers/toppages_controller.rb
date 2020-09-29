class ToppagesController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @categories = Category.all
    @posts = @q.result.includes(:categories)
  end
  
  def search
    @q = Post.search(search_params)
    @posts = @q.result.includes(:categories).order(id: :desc)
  end
  
  private
  def search_params
    params.require(:q).permit(:title_or_content_or_author_cont, :categories_id_eq)
  end
end