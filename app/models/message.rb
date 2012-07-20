class Message
  include ActiveAttr::Model
  
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :phone
  attribute :company
  attribute :service_wanted
  attribute :content

  validates_presence_of :first_name, :last_name, :email
  validates_format_of :email, with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :content, :maximum => 500
end
