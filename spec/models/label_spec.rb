require File.dirname(__FILE__) + '/../spec_helper'

describe Label do
  before(:each) do
    @label = Label.new(:name => "sample")
  end
  
  it "should be valid" do
    @label.should be_valid
  end
  
  it "shouldn't be valid without a name" do
    @label.name = nil
    @label.should_not be_valid
  end
end
