class GenresController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show]

  def index
    @genres = Genre.all
  end
  def new
    @genre = Genre.new
  end
  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      redirect_to(genres_path)
    else
      render :new
    end
  end
  def edit
    @genre = Genre.find(params[:id])
    @user = @auth
    render :new
  end
  def update
    @genre = Genre.find(params[:id])
    @user = @auth
    if @genre.update_attributes(params[:genre])
      redirect_to(genres_path)
    else
      render :new
    end
  end
  def show
    @genre = Genre.find(params[:id])
  end
  def destroy
    genre = Genre.find(params[:id])
    genre.delete
    redirect_to(genres_path)
  end
end