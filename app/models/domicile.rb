class Domicile < ActiveRecord::Base
  belongs_to :user
  validates :number,
  		numericality: { only_integer: true },
  		length:{ minimum:1, maximum:4}
end
