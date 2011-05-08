class MarketingContact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  
  default_scope :order => 'marketing_contacts.last_name ASC'
  
end
