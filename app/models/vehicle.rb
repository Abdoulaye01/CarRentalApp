class Vehicle < ApplicationRecord
	has_many :rentals
	belongs_to :company
	has_many :rentals, :through => :customers
	validates :regNumber, length: 6..10
	 #validates_uniqueness_of :vehicleType, presence: %w( jpeg gif png ), message: "extension %{value} is not included in the list"

validates :vehicleType, allow_blank: true, format: {
  with: %r{\.gif|jpg|png}i,
  message: 'must be a url for gif, jpg, or png image.'
}
validates  :vehicleType, presence: true

	 validates :engineSize, presence: true, numericality: true
	   validates  :fuelType, presence: true
	   validates_numericality_of :price, presence: true
	   
	  # validates_format_of :fuelType, :with => /\w+/, :message => " can only contain characters"
  validates_format_of :fuelType, :with => /\A[a-zA-Z]+\z/, :message => " must have one upper/lower case"
  validates_format_of :colour, :with => /\A[a-zA-Z]+\z/, :message => " must have one upper/lower case"
	 validates  :colour, presence: true
	
def self.search(query)
  where("BrandName LIKE ?", "%#{query}%") 
end

end
