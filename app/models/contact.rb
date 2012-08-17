class Contact < ActiveRecord::Base

	has_many :link1s, dependent: :destroy
	has_many :categories, through: :link1s
	accepts_nested_attributes_for :link1s, allow_destroy: true
  
    attr_accessible :address, :name, :latitude, :longitude, :categories_attributes, :link1s_attributes, :category_ids, :startDate, :endDate, :isActive
    #validates_presence_of :address, :city, :country, :firstname, :lastname, :zip
    #validates :zip , :length => { :minimum => 4 } 

    acts_as_gmappable :validation => true, :check_process => false, :process_geocoding => false   # settings relevant for new run of geocoding after each update of data

    def gmaps4rails_address
        "#{self.address}, #{self.zip}, #{self.city}, #{self.country}"
    end

end   


