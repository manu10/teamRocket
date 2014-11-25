class CreditCard < ActiveRecord::Base
  belongs_to :user

  
  validates :number,
  		numericality: { only_integer: true },
  		length:{ is:16},
  		allow_blank: true
  		

  validates	:securityCode,
  		numericality: { only_integer: true },
  		length:{ is:3},
  		allow_blank: true


validate :expiration_date_cannot_be_in_the_past
 
  def expiration_date_cannot_be_in_the_past
    if expireDate < Date.today
      errors.add(:expireDate, "Su tarjeta esta vencida")
    end
  end
end
