class CarrierwaveImagesController < ApplicationController
  before_action :set_carrierwave_image, only: [:show, :update, :destroy]

  # GET /carrierwave_images
  # GET /carrierwave_images.json
  def index
    @carrierwave_images = CarrierwaveImage.all

    render json: @carrierwave_images
  end

  # GET /carrierwave_images/1
  # GET /carrierwave_images/1.json
  def show
    render json: @carrierwave_image
  end

  # POST /carrierwave_images
  # POST /carrierwave_images.json
  def create
    @carrierwave_image = CarrierwaveImage.new(carrierwave_image_params)

    if @carrierwave_image.save
      render json: @carrierwave_image, status: :created, location: @carrierwave_image
    else
      render json: @carrierwave_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrierwave_images/1
  # PATCH/PUT /carrierwave_images/1.json
  def update
    @carrierwave_image = CarrierwaveImage.find(params[:id])

    if @carrierwave_image.update(carrierwave_image_params)
      head :no_content
    else
      render json: @carrierwave_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrierwave_images/1
  # DELETE /carrierwave_images/1.json
  def destroy
    @carrierwave_image.destroy

    head :no_content
  end

  private

    def set_carrierwave_image
      @carrierwave_image = CarrierwaveImage.find(params[:id])
    end

    def carrierwave_image_params
      params[:carrierwave_image]
    end
end
