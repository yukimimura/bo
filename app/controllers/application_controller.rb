class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #privateいらないかも
  
  def counts(user)
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_likes = user.favorites.count
    @count_reviews = user.reviews.count
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :image])
  end
end
