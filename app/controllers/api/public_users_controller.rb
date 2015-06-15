class Api::PublicUsersController < ApplicationController

  def index
    @owner = User.find_by(id: params[:user_id])
    @albums = @owner.albums
    render :index
  end

end
