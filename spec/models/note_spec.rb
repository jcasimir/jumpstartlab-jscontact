require File.dirname(__FILE__) + '/../spec_helper'

describe Note do
  before(:each) do
    @note = Note.new
  end
  
  it "should be valid" do
    @note.should be_valid
  end
  
  it "should have many taggings" do
    @note.should respond_to(:taggings)
  end
  
  it "should have many contacts" do
    @note.should respond_to(:contacts)
  end
end
