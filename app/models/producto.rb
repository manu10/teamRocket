class Producto < ActiveRecord::Base
	has_many :comments
	mount_uploader :image, ImageUploader
validate :expiration_date_cannot_be_in_the_past
 
  def expiration_date_cannot_be_in_the_past
    if vencimiento.present? && vencimiento < Date.today
      errors.add(:vencimiento, "can't be in the past")
    end
  end
 

	
def self.search(query)
	
	where("titulo like ? or descripcion like ?", "%#{query}%","%#{query}%") 
	
end


end
