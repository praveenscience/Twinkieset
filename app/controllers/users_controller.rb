class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash.now[:notice] = ['Created account!']
      log_in_user!(@user)
      redirect_to admin_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash.now[:notice] = ['Successfully updated user!']
      render json: @user
    else
      flash.now[:errors] = @user.errors.full_messages
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:business_name, :website, :email, :password, :username)
    end
end
