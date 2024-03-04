class UsersController < ApplicationController
  def show
    get_users_records
  end
  
  def liked
    get_users_records
  end
  
  def feed
    get_users_records
  end

  def followers
    get_users_records
  end
  
  def following
    get_users_records
  end
  
  def get_users_records
    username = params.fetch("username")
    @user = User.find_by!(username:username)
  end
end
