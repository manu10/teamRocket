class Producto < ActiveRecord::Base
	
mount_uploader :image, ImageUploader

def self.search(query)
	where("titulo like ? or descripcion like ?", "%#{query}%","%#{query}%") 
	
end


end
