class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :update, :destroy]

  # GET /pieces
  # GET /pieces.json
  def index
    @pieces = Piece.all
    render json: @pieces
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    render json: @piece
  end

  # POST /pieces
  # POST /pieces.json
  def create
    @piece = Piece.new(piece_params)

    if @piece.save
      render json: @piece, status: :created, location: @piece
    else
      render json: @piece.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pieces/1
  # PATCH/PUT /pieces/1.json
  def update
    @piece = Piece.find(params[:id])

    if @piece.update(piece_params)
      head :no_content
    else
      render json: @piece.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pieces/1
  # DELETE /pieces/1.json
  def destroy
    @piece.destroy

    head :no_content
  end

  private

    def set_piece
      @piece = Piece.find(params[:id])
    end

    def piece_params
      params.require(:piece).permit(:title, :style, :subject, :medium, :size, :price)
    end
end
