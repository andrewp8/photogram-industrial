class UsersController < ApplicationController
  def show
    username = params.fetch("username")
    
    @user = User.find_by!(username:username)
  end
  def liked
    username = params.fetch("username")
    @user = User.find_by!(username:username)
  end

end
