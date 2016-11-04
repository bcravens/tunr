class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :destroy, :edit, :update]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    redirect_to artists_path
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end

end
