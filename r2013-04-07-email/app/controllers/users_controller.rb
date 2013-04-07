class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def email
    user = User.find(params[:id])
    Notifications.thinking_of_you(user).deliver
    render :nothing => true
  end
end
