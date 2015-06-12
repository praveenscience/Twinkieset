class Api::PublicAlbumsController < ApplicationController

  def index
    @owner = User.find_by(id: params[:user_id])
    @albums = Album.where(user_id: params[:user_id])
    @categories = @albums.pluck(:category).uniq

    render :index

  end
end
