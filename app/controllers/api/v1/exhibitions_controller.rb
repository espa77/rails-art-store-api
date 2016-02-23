class Api::V1::ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:show, :update, :destroy]

  def index
    render json: Exhibition.all
  end

  def show
    render json: @exhibition
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    render json: @exhibition
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    @exhibition.update(exhibition_params)
    render json: @exhibition
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
    render json: @exhibition.destroy
  end

  private
    def exhibition_params
      params.require(:exhibition).permit(:location, :title, :piece_ids)
    end
end
