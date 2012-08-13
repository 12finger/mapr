class Category < ActiveRecord::Base
  has_many :link1s ,dependent: :destroy
  has_many :contacts, through: :link1s

  attr_accessible :name
end
