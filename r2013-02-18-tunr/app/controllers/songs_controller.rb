class SongsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show, :purchase, :buy]

  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def edit
    @song = Song.find(params[:id])
    @user = @auth
    render :new
  end
  def update
    @song = Song.find(params[:id])
    @user = @auth
    if @song.update_attributes(params[:song])
      redirect_to(song_path)
    else
      render :new
    end
  end
  def show
    @song = Song.find(params[:id])
  end
  def destroy
    song = Song.find(params[:id])
    song.delete
    redirect_to(songs_path)
  end
  def purchase
    @song = Song.find(params[:id])
    @user = @auth
  end
  def buy
    @song = Song.find(params[:song_id])
    if @song.update_attributes(params[:song])
      @auth.balance = @auth.balance - @song.cost
      @auth.save
      redirect_to(mixtape_path[:mixtape_id])
    else
      render :purchase
    end
  end
end









