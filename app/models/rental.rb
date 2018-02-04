class Rental < ApplicationRecord
    belongs_to :vehicle
 belongs_to :customer
    validates :customer, presence: true
	validates :odemeterBefore, presence: true, numericality: true
    validates :odemeterAfter, presence: true, numericality: true
    validates_numericality_of :odemeterBefore, presence: true
    validates_numericality_of :odemeterAfter, presence: true
    #validates_format_of :odemeterBefore, :odemeterAfter,
     # :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
     # :message => "- Phone numbers must be in xxx-xxx-xxxx format."
    
    validates :gasTankBefore, presence: true, numericality: true
    validates :gasTankAfter, presence: true, numericality: true
    validates_numericality_of :gasTankBefore, presence: true
    validates_numericality_of :gasTankAfter, presence: true
    
    validate :pickup_date_cannot_be_in_the_past, :retun_date_cannot_be_in_the_past,
    
 
  def pickup_date_cannot_be_in_the_past
    if pickUpDateTime.present? && pickUpDateTime < Date.today
      errors.add(:pickUpDateTime, "can't be in the past")
 end
 end
    def retun_date_cannot_be_in_the_past
    if returnDateTime < Date.today
      errors.add(:returnDateTime, "can't be before pickupdate")
    end
  end
	
	
end
