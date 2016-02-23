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
    @artist = Artist.new(artist_params)
    if @artist.save
      render json: @artist
    else
      render json: @artist.errors, status: :unprocessable_entity
    end
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      head :no_content
    else
      render json: @artist.errors, status: :unprocessable_entity
    end
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
