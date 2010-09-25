module AttachmentsHelper  
  def print_attachments(attachments)
    items = attachments.collect{|attachment| "<li>#{link_to attachment, attachment}</li>"}
    "<ul>" + items.join("\n") + "</ul>"
  end
end
