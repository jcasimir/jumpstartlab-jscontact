class Company < Contact
  alias_attribute :name, :last_name
  
  def to_s
    name
  end
end