require 'spec_helper'

describe PhoneNumber do
  before(:each) do
    @phone_number = PhoneNumber.new(:number => "2024605555", :person => nil)
  end
  
  it "should be valid" do
    @phone_number.should be_valid
  end
  
  it "should not be valid without a number" do
    @phone_number.number = nil
    @phone_number.should_not be_valid
  end  

end
