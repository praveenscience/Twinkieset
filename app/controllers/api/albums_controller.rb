class Api::AlbumsController < ApplicationController
  before_action :must_be_logged_in

  def index
    @albums = current_user.albums

    render :index
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
    @album = current_user.albums.find(params[:id])

    if @album.update(album_params)
      render :show
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
      params.require(:album).permit(:title, :event_date, :cover_image_id, :status)
    end

    def must_be_logged_in
      if !logged_in?
        redirect_to new_session_url, status: :forbidden
      end
    end
end
