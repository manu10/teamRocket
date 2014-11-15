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
end
