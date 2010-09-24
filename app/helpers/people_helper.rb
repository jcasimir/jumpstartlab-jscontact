module PeopleHelper
  
  def print_numbers(phone_numbers)
    text_numbers = phone_numbers.collect{|pn| pn.number}
    text_numbers.join(", ")
  end
end
