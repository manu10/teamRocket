class Producto < ActiveRecord::Base

validates :titulo, presence: true, length: { maximum: 12}

end
