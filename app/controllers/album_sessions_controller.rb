class AlbumSessionsController < ApplicationController
  def create
    @album = Album.find_by_credentials(
      params[:album][:id],
      params[:album][:password]
    )

    if @album
      log_into_album!(@album)
      flash[:notice] = ["Successfully logged into album!"]
      redirect_to album_sessions_url
      # render text: "You have successfully logged in to #{@album.title}"
    else
      @album = Album.new
      flash.now[:errors] = ["Invalid password"]
      render :new
    end
  end

  def new
    @album = Album.new
  end

  # def destroy
  #   log_out_album!
  #   flash.now[:notice] = ["Successfully logged out of album"]
  #   render text: "logged out of album"
  # end


  def index

    render :index
  end

  private

    # def album_params
    #   params.require(:album).permit(:password)
    # end
end
