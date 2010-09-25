require File.dirname(__FILE__) + '/../spec_helper'

describe Contact do
  before(:each) do
    @contact = Contact.new
  end
  
  it "should be valid" do
    Contact.new.should be_valid
  end
  
  it "should have associated taggings" do
    @contact.should respond_to(:taggings)
  end
  
  it "should have associated notes" do
    @contact.should respond_to(:notes)
  end
end
