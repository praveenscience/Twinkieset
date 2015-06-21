class AlbumSessionsController < ApplicationController

  def create
    album = Album.find(params[:album][:id])
    @album = album && album.password == params[:album][:password] ? album : nil


    if @album
      log_into_album!(@album)
      flash[:notice] = ["Successfully logged into album!"]
      
      redirect_to "/users##{params[:router]}"
      # redirect_to album_sessions_url
      # render json:
      # render text: "You have successfully logged in to #{@album.title}"
    else
      flash[:errors] = ["Invalid password"]
      redirect_to :back
    end
  end

  def new
# fail
    @album = Album.find(params[:album])
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
