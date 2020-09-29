class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc)
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  #params書く際にはcarrierwaveの５を参照必須
end
