class Api::AlbumsController < ApplicationController
  def create
    @album = current_user.albums.new(album_params)

    if @album.save
      render json: @album
    else
      render json: @album.errors.full_messages, status: :unprocessable_entity
    end
  end

  def index
    @albums = current_user.albums

    render json: @albums
  end

  def show
    @album = Album.includes(:subalbums, :photos).find(params[:id])

    if @album.user_id == current_user.id
      render :show
    else
      render json: "not your album"
    end
  end
  private
    def album_params
      params.require(:album).permit(:title, :event_date)
    end
end
