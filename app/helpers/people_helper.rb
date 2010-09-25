module PeopleHelper

  def print_contacts(contacts)
    items = contacts.collect{|contact| "<li>#{link_to contact, contact}</li>"}
    "<ul>" + items.join("\n") + "</ul>"    
  end
end
