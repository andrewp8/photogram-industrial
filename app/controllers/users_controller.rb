class UsersController < ApplicationController
  def show
    username = params.fetch("username")

    @user = User.find_by!(username:username)
  end
  def feed
    @feed = User.find(current_user.id).feed
    render "users/feed"
  end

end
