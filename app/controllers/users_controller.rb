class UsersController < ApplicationController
  # use https in production environment
  force_ssl
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Thank you for signing up!'
      redirect_to root_url
    else
      flash.now.alert = 'Invalid data'
      render "new"
    end
  end
end
