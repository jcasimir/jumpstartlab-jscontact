require File.dirname(__FILE__) + '/../spec_helper'

describe Tagging do
  before(:each) do
    @tagging = Tagging.new
    @tagging.contact = Person.create(:first_name => "John", :last_name => "Doe")
    @tagging.asset = Note.create()
  end
  
  it "should have an associated contact" do
    @tagging.should respond_to(:contact)
  end
  
  it "should have an associated asset" do
    @tagging.should respond_to(:asset)
  end
  
  it "should be valid" do
    @tagging.should be_valid
  end
  
  it "should not be valid without a contact" do
    @tagging.contact = nil
    @tagging.should_not be_valid
  end
  
  it "should not be valid without an asset" do
    @tagging.asset = nil
    @tagging.should_not be_valid
  end 
end
