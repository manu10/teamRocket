class Producto < ActiveRecord::Base

validates :titulo, presence: true, length: { maximum: 12}


default_scope -> {order("created_at desc")}
scope :recientes, -> {order("created_at asc").limit(3)}

def search 
	
end

end
