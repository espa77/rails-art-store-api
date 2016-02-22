class Api::V1::ArtistsController < ApplicationController

  # GET /artists
  # GET /artists.json
  def index
    render json: Artist.all
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    render json: @artist
  end

  def create
    artist = Artist.create(artist_params)
    render json: artist
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    render json: artist
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    render nothing: true
  end

  private
  
    def artist_params
      params.require(:artist).permit(:name, :location, :bio, :asset)
    end
end
