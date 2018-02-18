class Customer < ApplicationRecord
	has_secure_password
	has_many :rentals
	has_many :reviews
	belongs_to :company
	validates :firstName, presence: true
    validates :lastName, presence: true


	validates :password, length: { minimum: 6 }
	validates :gender, presence: true 
	#validates_inclusion_of  :gender, :in => %w( male, female )
	validates_presence_of :dob, presence: true
	
    validates_each :firstName, :lastName do |record, attr, value|
    record.errors.add(attr, 'Cannot start with a number') if value =~ /\A[0-9]/
    end
	validates :email, 
          :format => { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
           
   validates_numericality_of :phoneNumber, presence: true
   validates :phoneNumber, presence: true, length: 6..10
   validates :address, length: 6..20
   validates :gender, allow_blank: true, format: {
  with: %r{\.|male|female}i,
  message: 'must be male or female.'
}


end
