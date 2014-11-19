class Category < ActiveRecord::Base
	belongs_to :producto
	has_many :productos
	

end
