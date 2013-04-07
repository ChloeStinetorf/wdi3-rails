class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create, :index]

  def index
    @users = User.order(:email)
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    @users = User.order(:email)
    respond_to do |format|
      format.html { redirect_to(users_path) }
      format.js { render :create }
    end
  end
  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end
