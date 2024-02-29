class UsersController < ApplicationController
  def profile
    @user = User.find(current_user.id)
  end
  def feed
    @feed = User.find(current_user.id).feed
    render "users/feed/feed"
  end
end
