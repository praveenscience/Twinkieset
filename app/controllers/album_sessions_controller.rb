class AlbumSessionsController < ApplicationController
  def create
    albumID = Album.find(params[:id]);
    @album = Album.find_by_credentials(
      albumID,
      params[:album][:password]
    )

    if @album
      log_into_album!(@album)
      flash[:notice] = ["Successfully logged into album!"]
      # redirect_to TODO
      render text: "You have successfully logged in to #{album.title}"
    else
      @album = Album.new(album_params)
      flash.now[:errors] = ["Invalid password"]
      render :new
    end
  end

  def login
    @album = Album.new(album_params)
  end

  def destroy
    log_out_album!
    flash.now[:notice] = ["Successfully logged out of album"]
    render text: "logged out of album"
  end

  private

    def album_params
      params.require(:album).permit(:password)
    end
end
