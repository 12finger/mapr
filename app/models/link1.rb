class Link1 < ActiveRecord::Base

  belongs_to :contact
  belongs_to :category

  attr_accessible :category_id, :contact_id
end
