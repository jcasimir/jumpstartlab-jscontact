class PhoneNumbersController < ApplicationController
  def index
    @phone_numbers = PhoneNumber.all
  end
  
  def show
    @phone_number = PhoneNumber.find(params[:id])
  end
  
  def new
    @phone_number = PhoneNumber.new(:person_id => params[:person_id])
  end
  
  def create
    @phone_number = PhoneNumber.new(params[:phone_number])
    if @phone_number.save
      flash[:notice] = "Successfully created phone number."
      redirect_to person_path(@phone_number.person)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @phone_number = PhoneNumber.find(params[:id])
  end
  
  def update
    @phone_number = PhoneNumber.find(params[:id])
    if @phone_number.update_attributes(params[:phone_number])
      flash[:notice] = "Successfully updated phone number."
      redirect_to @phone_number.person
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @phone_number = PhoneNumber.find(params[:id])
    @phone_number.destroy
    flash[:notice] = "Successfully destroyed phone number."
    redirect_to @phone_number.person
  end
end
