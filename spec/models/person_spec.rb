require 'spec_helper'

describe Person do
  it "is not valid without a first name" do
    person = Person.new(:first_name => nil)
    person.should_not be_valid
  end
  
  it "is not valid without a last name" do
    person = Person.new(:last_name => nil)
    person.should_not be_valid
  end
end