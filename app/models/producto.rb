class Producto < ActiveRecord::Base
	
mount_uploader :image, ImageUploader

end
