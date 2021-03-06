# I'm a top-level class documentation comment
class HomeController < ApplicationController
  def index
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @recent_users = Micropost.recent_users
  end
end
