module PhoneNumbersHelper
  
  def edit_phone_number_icon(phone_number)
    link_to image_tag("/icons/page_edit.png"), edit_phone_number_path(phone_number)
  end
    
  def print_numbers(phone_numbers)    
    items = phone_numbers.collect{|pn| "<li><span class='label'>#{pn.label}</span> #{pn.number} #{edit_phone_number_icon(pn)}</li>"}
    "<ul>" + items.join("\n") + "</ul>"    
  end
end
