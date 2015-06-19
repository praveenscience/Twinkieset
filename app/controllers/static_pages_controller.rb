class StaticPagesController < ApplicationController

  def root
    redirect_to new_session_url unless logged_in?
  end


  def public_index
    @users = User.all
    render :public_index
  end

end
