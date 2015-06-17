class Api::PublicUsersController < ApplicationController

  def index
    @owner = User.find_by(id: params[:user_id])
    @albums = @owner.albums.where(status: 'Published')
    render :index
  end

end
