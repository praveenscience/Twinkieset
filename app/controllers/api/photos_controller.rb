class Api::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      render json: @photo
    else
      render json: @photo.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      render json: @photo
    else
      render json: @photo.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render json: {}
  end

  private
    def photo_params
      params.require(:photo).permit(:image_url, :order, :subalbum_id)
    end
end
