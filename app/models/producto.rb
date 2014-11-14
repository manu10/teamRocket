class Producto < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	mount_uploader :image, ImageUploader


	
def self.search(query)
	
	where("titulo like ? or descripcion like ?", "%#{query}%","%#{query}%") 
	
end


end
