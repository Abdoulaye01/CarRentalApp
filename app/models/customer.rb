class Customer < ApplicationRecord
	has_many :rentals
	has_many :rentals, :through => :vehicle
	belongs_to :company
	validates :firstName, presence: true
    validates :lastName, presence: true
    
    validates_each :firstName, :lastName do |record, attr, value|
    record.errors.add(attr, 'Cannot start with a number') if value =~ /\A[0-9]/
    end
	validates :email, 
          :format => { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
           
   validates_numericality_of :phoneNumber, presence: true
   validates :phoneNumber, presence: true, length: 6..10
   validates :address, length: 6..20

end
