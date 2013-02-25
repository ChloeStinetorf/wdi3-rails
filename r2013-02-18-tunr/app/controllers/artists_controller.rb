class ArtistsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show]

  def index
    @artists = Artist.all
  end
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to(artists_path)
    else
      render :new
    end
  end
  def edit
    @artist = Artist.find(params[:id])
    @user = @auth
    render :new
  end
  def update
    @artist = Artist.find(params[:id])
    @user = @auth
    if @artist.update_attributes(params[:artist])
      redirect_to(artist_path)
    else
      render :new
    end
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to(artists_path)
  end
end