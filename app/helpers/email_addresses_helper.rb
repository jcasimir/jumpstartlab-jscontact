module EmailAddressesHelper
  def print_email_addresses(email_addresses)
    text_addresses = email_addresses.collect{|email| email.address + edit_email_address_icon(email)}
    text_addresses.join(", ")
  end

  def edit_email_address_icon(email_address)
    link_to image_tag("/icons/page_edit.png"), edit_email_address_path(email_address)
  end
end
