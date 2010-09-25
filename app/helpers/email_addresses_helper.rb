module EmailAddressesHelper
  def print_email_addresses(email_addresses)
    items = email_addresses.collect{|email| "<li><span class='label'>#{email.label}</span> #{email.address} #{edit_email_address_icon(email)}</li>"}
    "<ul>" + items.join("\n") + "</ul>"    
  end

  def edit_email_address_icon(email_address)
    link_to image_tag("/icons/page_edit.png"), edit_email_address_path(email_address)
  end
end
