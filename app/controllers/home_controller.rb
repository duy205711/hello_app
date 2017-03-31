# I'm a top-level class documentation comment
class HomeController < ApplicationController
  def index
    @recen_post = Micropost.paginate(page: params[:page]).order('created_at DESC').limit(10)
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @recent_users = Micropost.recent_users
  end
end
