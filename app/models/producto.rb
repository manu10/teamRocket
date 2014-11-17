class Producto < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	validate :expiration_date_cannot_be_in_the_past
	

 
  def expiration_date_cannot_be_in_the_past
    if vencimiento.present? && vencimiento < Date.today+15.days
      errors.add(:vencimiento, "can't be in the past")
    end
  end
 

	
def self.search(query)
	
	where("titulo like ? or descripcion like ?", "%#{query}%","%#{query}%") 
	
end


end
