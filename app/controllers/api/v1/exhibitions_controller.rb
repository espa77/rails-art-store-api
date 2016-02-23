class Api::V1::ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:show, :update, :destroy]

  # GET /exhibitions
  # GET /exhibitions.json
  def index
    render json: Exhibition.all
  end

  # GET /exhibitions/1
  # GET /exhibitions/1.json
  def show
    render json: @exhibition
  end

  # POST /exhibitions
  # POST /exhibitions.json
  def create
    @exhibition = Exhibition.new(exhibition_params)

    if @exhibition.save
      render json: @exhibition, status: :created, location: @exhibition
    else
      render json: @exhibition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exhibitions/1
  # PATCH/PUT /exhibitions/1.json
  def update
    @exhibition = Exhibition.find(params[:id])

    if @exhibition.update(exhibition_params)
      head :no_content
    else
      render json: @exhibition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exhibitions/1
  # DELETE /exhibitions/1.json
  def destroy
    render json: @exhibition.destroy
  end

  private

    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    def exhibition_params
      params.require(:exhibition).permit(:location, :title)
    end
end
