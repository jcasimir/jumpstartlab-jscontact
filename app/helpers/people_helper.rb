module PeopleHelper
  
  def print_numbers(phone_numbers)
    text_numbers = phone_numbers.collect{|pn| pn.number + edit_phone_number_icon(pn)}
    text_numbers.join(", ")
  end
end
