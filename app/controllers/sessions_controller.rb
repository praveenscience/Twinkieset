class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      log_in_user!(@user)
      flash[:notice] = ["You have successfully logged in"]
      redirect_to root_url
    else
      @user = User.new(user_params)
      flash.now[:errors] = ['Invalid email or password']
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def destroy
    log_out_user!
    flash[:notice] = ["You have successfully logged out!"]
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
