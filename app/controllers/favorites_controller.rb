class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(post_id: params[:post_id])
    post = Post.find(params[:post_id])
    post.fav = post.favs.count
    post.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @favorite = current_user.favorites.find_by(post_id: @post.id)
    @favorite.destroy
    @post.fav = @post.favs.count
    @post.save
    redirect_back(fallback_location: root_path)
  end
end
