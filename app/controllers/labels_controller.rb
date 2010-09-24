class LabelsController < ApplicationController
  def index
    @labels = Label.all
  end
  
  def show
    @label = Label.find(params[:id])
  end
  
  def new
    @label = Label.new
  end
  
  def create
    @label = Label.new(params[:label])
    if @label.save
      flash[:notice] = "Successfully created label."
      redirect_to @label
    else
      render :action => 'new'
    end
  end
  
  def edit
    @label = Label.find(params[:id])
  end
  
  def update
    @label = Label.find(params[:id])
    if @label.update_attributes(params[:label])
      flash[:notice] = "Successfully updated label."
      redirect_to @label
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @label = Label.find(params[:id])
    @label.destroy
    flash[:notice] = "Successfully destroyed label."
    redirect_to labels_url
  end
end
