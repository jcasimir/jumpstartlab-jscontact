require 'spec_helper'

describe PhoneNumber do
  before(:each) do
    @person = Person.create(:first_name => "Sample", :last_name => "Name")
    @phone_number = @person.phone_numbers.create(:number => "2024605555")
  end
  
  it "should be valid" do
    @phone_number.should be_valid
  end
  
  it "should not be valid without a number" do
    @phone_number.number = nil
    @phone_number.should_not be_valid
  end  
  
  it "should not be valid without a person" do
    @phone_number.person = nil
    @phone_number.should_not be_valid
  end
  
  it "should have a single label" do
    @phone_number.label.should exist
  end
  
end
