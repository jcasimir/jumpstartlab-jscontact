class Company < Contact
  attr_accessible :name
  alias_attribute :name, :last_name
  
  def to_s
    name
  end
end