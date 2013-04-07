class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create, :index]

  def index
    @users = User.order(:email)
  end
  def new
    @user = User.new
  end
  def create
    user = User.create(params[:user])
    @users = User.order(:email)
  end
  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end