class Api::V1::PiecesController < ApplicationController

  def index
    render json: Piece.all
  end

  def show
    render json: @piece
  end

  def create
    @piece = Piece.create(piece_params)
     uploader = AssetUploader.new(@piece, :piece)
     uploader.store!(params[:piece][:asset])
     @piece.asset = uploader.file
     @piece.save!
     render json: @piece
   end

  def update
    @piece = Piece.find(params[:id])
    @piece.update(piece_params)
    render json: @piece
  end

  def destroy
    @piece = Piece.find(params[:id])
    render json: @piece.destroy
  end

  private
    def piece_params
      params.require(:piece).permit(:title, :style, :subject, :medium, :size, :price, :artist_id, :asset, :exhibition_id)
    end
end
