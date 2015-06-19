class Api::PublicUsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def show
    @owner = User.find_by(id: params[:user_id])
    @albums = @owner.albums.where(status: 'Published')
    render :show
  end

end
