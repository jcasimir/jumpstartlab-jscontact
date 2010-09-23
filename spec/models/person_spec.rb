require 'spec_helper'

describe Person do
  before(:each) do
    @person = Person.new(:first_name => "John",
                               :last_name => "Doe",
                               :phone_number => "2024605555")
  end
  
  it "is not valid without a first name" do
    @person.first_name = nil    
    @person.should_not be_valid
  end
  
  it "is not valid without a last name" do
    @person.last_name = nil
    @person.should_not be_valid
  end
end