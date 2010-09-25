module PhoneNumbersHelper
  
  def edit_phone_number_icon(phone_number)
    link_to image_tag("/icons/page_edit.png"), edit_phone_number_path(phone_number)
  end
    
  def print_numbers(phone_numbers)    
    items = phone_numbers.collect{|pn| "<li><span class='label'>#{pn.label}</span> #{print_number(pn)} #{edit_phone_number_icon(pn)}</li>"}
    "<ul>" + items.join("\n") + "</ul>"    
  end
  
  def print_number(phone_number)
    digits = phone_number.number
    case digits.length
      when 12 then "+#{digits[0..1]} (#{digits[2..4]}) #{digits[5..7]}-#{digits[8..11]}"
      when 10 then "(#{digits[0..2]}) #{digits[3..5]}-#{digits[6..9]}"  
      when 7 then "#{digits[0..2]}-#{digits[3..6]}"
      else digits  
    end
  end
end