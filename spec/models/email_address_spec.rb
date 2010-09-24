require File.dirname(__FILE__) + '/../spec_helper'

describe EmailAddress do
  before(:each) do
    person = Person.create(:first_name => "John", :last_name => "Doe")
    @email_address = person.email_addresses.new(:address => "sample@sample.com")
  end
  
  it "should be valid" do
    @email_address.should be_valid
  end
  
  it "should not be valid without an address" do
    @email_address.address = nil
    @email_address.should_not be_valid
  end
  
  it "should not be valid without a person_id" do
    @email_address.person_id = nil
    @email_address.should_not be_valid
  end
  
  it "should have a single label" do
    label = Label.new
    @email_address.label = label
    @email_address.label.should equal label
  end
end
