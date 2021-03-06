class UsersController < ApplicationController
  # use https in production environment
  force_ssl
  
  skip_before_filter :require_login, :only => [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Thank you for signing up!'
      redirect_to root_url
    else
      render "new"
    end
  end
end
