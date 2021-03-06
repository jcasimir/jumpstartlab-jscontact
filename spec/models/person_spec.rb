require 'spec_helper'

describe Person do
  before(:each) do
    @person = Person.new(:first_name => "John",
                               :last_name => "Doe")
  end
  
  it "is not valid without a first name" do
    @person.first_name = nil    
    @person.should_not be_valid
  end
  
  it "is not valid without a last name" do
    @person.last_name = nil
    @person.should_not be_valid
  end
  
  it "is valid with valid attributes" do
    @person.should be_valid
  end

  it "should have an array of phone numbers" do
    @person.phone_numbers.class.should == Array    
  end
  
  it "should have an array of email addresses" do
    @person.email_addresses.class.should == Array    
  end
  
end