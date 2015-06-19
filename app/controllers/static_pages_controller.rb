class StaticPagesController < ApplicationController

  def root
    redirect_to new_session_url unless logged_in?
  end


  def public_index
    @users = User.limit(3)
    render :public_index
  end

end
