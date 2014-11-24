class Comment < ActiveRecord::Base
	belongs_to :producto
	belongs_to :user

	validates :mensaje,presence:true,length:{minimum:5,maximum:255}
	validates :respuesta,length:{maximum:255} 
	validates :producto_id,presence:true
end
