class UsersController < ApplicationController
  before_action :if_logged_in, only: [:new]
  
  def new
    @user = User.new
    render :new
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = ['Created account! Please check your email to activate your account']
      UserMailer.welcome_email(@user).deliver_now
      redirect_to new_session_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if params[:user][:old_password] && !@user.is_password?(params[:user][:old_password])
      render json: 'Old password is incorrect.', status: :unprocessable_entity
      return
    end

    if @user.update(user_params)
      flash.now[:notice] = ['Successfully updated user!']
      render json: @user
    else
      flash.now[:errors] = @user.errors.full_messages
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def activate
    @user = User.find_by(activation_token: params[:activation_token])
    if @user
      @user.activated = true

      flash[:notice] = ["You have successfully activated your account!"]
      log_in_user!(@user)
      redirect_to admin_url
    end
  end

  private
    def user_params
      params.require(:user).permit(:business_name, :website, :email, :password, :username)
    end

    def if_logged_in
      if logged_in?
        redirect_to "/admin"
      end
    end
end
