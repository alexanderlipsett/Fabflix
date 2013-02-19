class StarsController < ApplicationController
  def index
    @stars = Star.all
  end
  
  def show
    @star = Star.find(params[:id])
  end
  
  def new
    @star = Star.new
  end
  
  def create
    @star = Star.new(params[:star])
    
    if @star.save
      flash[:notice] = 'Star created!'
    else
      render 'new'
    end
  end
  
  def edit
    @star = Star.find(params[:id])
  end
  
  def update
    @star = Star.find(params[:id])
    
    if @star.update_attributes(params[:star])
      flash[:notice] = 'Star updated'
      redirect_to stars_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @star = Star.find(params[:id])
    @star.destroy
    
    flash[:notice] = 'Star deleted'
    redirect_to stars_path
  end
end
