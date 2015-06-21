class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user, :current_album, :logged_in_album?

  def current_album
    album = Album.find_by(password: session[:album_password])
  end

  def logged_in_album?
    !!current_album
  end

  def log_into_album!(album)
    session[:album_password] = album.password
  end


  def current_user
    user = User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def log_in_user!(user)
    session[:session_token] = user.reset_session_token!
  end

  def log_out_user!
    current_user.reset_session_token!
    session[:session_token] = nil
  end
end
