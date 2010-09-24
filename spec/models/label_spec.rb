require File.dirname(__FILE__) + '/../spec_helper'

describe Label do
  it "should be valid" do
    Label.new.should be_valid
  end
end
