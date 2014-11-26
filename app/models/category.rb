class Category < ActiveRecord::Base

	validates_presence_of :name
	belongs_to :producto
	has_many :productos
	
end
