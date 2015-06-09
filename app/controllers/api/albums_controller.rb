class Api::AlbumsController < ApplicationController
  def index
    @albums = current_user.albums

    render json: @albums
  end

  def create
    @album = current_user.albums.new(album_params)

    if @album.save
      render json: @album
    else
      render json: @album.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @album = Album.includes(:subalbums, :photos).find(params[:id])

    if @album.user_id == current_user.id
      render :show
    else
      render json: "not your album", status: :forbidden
    end
  end

  def update
    @album = current_user.ablums.find(params[:id])

    if @album.update(album_params)
      render json: @album
    else
      render json: @album.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @album = current_user.albums.find(params[:id])
    @album.destroy
    render json: {}
  end

  private
    def album_params
      params.require(:album).permit(:title, :event_date)
    end
end
