class EmailAddressesController < ApplicationController
  def index
    @email_addresses = EmailAddress.all
  end
  
  def show
    @email_address = EmailAddress.find(params[:id])
  end
  
  def new
    @email_address = EmailAddress.new(:person_id => params[:person_id])
  end
  
  def create
    @email_address = EmailAddress.new(params[:email_address])
    if @email_address.save
      flash[:notice] = "Successfully created email address."
      redirect_to @email_address.person
    else
      render :action => 'new'
    end
  end
  
  def edit
    @email_address = EmailAddress.find(params[:id])
  end
  
  def update
    @email_address = EmailAddress.find(params[:id])
    if @email_address.update_attributes(params[:email_address])
      flash[:notice] = "Successfully updated email address."
      redirect_to @email_address.person
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @email_address = EmailAddress.find(params[:id])
    @email_address.destroy
    flash[:notice] = "Successfully destroyed email address."
    redirect_to @email_address.person
  end
end
