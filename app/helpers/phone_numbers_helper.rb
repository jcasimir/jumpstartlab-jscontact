module PhoneNumbersHelper
  
  def edit_phone_number_icon(phone_number)
    link_to image_tag("/icons/page_edit.png"), edit_phone_number_path(phone_number)
  end
end
