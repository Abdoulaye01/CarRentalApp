class Company < ApplicationRecord
	has_many :vehicles
	has_many :customers
	validates :city, presence: true 
	validates :address, presence: true
	validates :areacode, presence: true, length: 6..10
	validates :phoneNumber, uniqueness: true, length: 6..6
	geocoded_by :address
	after_validation :geocode


	
end
