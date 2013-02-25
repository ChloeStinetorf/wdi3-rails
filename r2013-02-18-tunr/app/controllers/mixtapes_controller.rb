class MixtapesController < ApplicationController

  def index
    @mixtapes = Mixtape.order(:name)
  end
  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.new(params[:mixtape])
    if @mixtape.save
      @auth.mixtapes << @mixtape
      redirect_to(@mixtape)
    else
      render :new
    end
  end
  def edit
    @mixtape = Mixtape.find(params[:id])
    @user = @auth
    render :new
  end
  def update
    @mixtape = Mixtape.find(params[:id])
    @user = @auth
    if @mixtape.update_attributes(params[:mixtape])
      redirect_to(mixtape_path)
    else
      render :new
    end
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end
  def destroy
    album = Mixtape.find(params[:id])
    album.delete
    redirect_to(mixtapes_path)
  end
end