class ContactLinkScategory < ActiveRecord::Base

  belongs_to :contcts
  belongs_to :category

  attr_accessible :category_id, :contact_id
end
