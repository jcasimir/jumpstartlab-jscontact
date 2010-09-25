require 'spec_helper'

describe PhoneNumber do
  before(:each) do
    @person = Person.create(:first_name => "Sample", :last_name => "Name")
    @label = Label.create(:name => "sample_label")
    @phone_number = @person.phone_numbers.new(:number => "2024605555")
    @phone_number.label = @label
  end
  
  it "should be valid" do
    @phone_number.should be_valid
  end
  
  it "should not be valid without a number" do
    @phone_number.number = nil
    @phone_number.should_not be_valid
  end  
  
  it "should not be valid without a contact" do
    @phone_number.contact = nil
    @phone_number.should_not be_valid
  end
  
  it "should have a single label" do
    label = Label.new
    @phone_number.label = label
    @phone_number.label.should equal label
  end
  
  it "should not be valid without a label" do
    @phone_number.label = nil
    @phone_number.should_not be_valid
  end
  
  it "accepts a phone_number containing hyphens" do
    @phone_number.number = "202-555-5555"
    @phone_number.should be_valid
  end

  it "accepts a phone_number containing multiple symbols" do
    @phone_number.number = "+(202) 555.5555"
    @phone_number.should be_valid
  end  
end
