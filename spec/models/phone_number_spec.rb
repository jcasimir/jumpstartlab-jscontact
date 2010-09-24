require File.dirname(__FILE__) + '/../spec_helper'

describe PhoneNumber do
  before(:each) do
    @phone_number = PhoneNumber.new()
  end
  
  it "should be valid" do
    @phone_number.should be_valid
  end
  
  it "should not be valid without a number" do
    @phone_number.number = nil
    @phone_number.should_not be_valid
  end
end
