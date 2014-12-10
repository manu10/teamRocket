class Producto < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
  	
	has_many :comments, dependent: :destroy
	has_many :oferts, dependent: :destroy
	
 

	
def self.search(query)
	if Category.where(name:query).first != nil
    joins(:category).where("categories.name like ?", "%#{query}%")
	else
    where('productos.titulo like ? or productos.descripcion like ?', "%#{query}%", "%#{query}%")
	end
end


end
