class Producto < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
  	
	has_many :comments, dependent: :destroy
	validate :expiration_date_cannot_be_in_the_past
	

 
  def expiration_date_cannot_be_in_the_past
    if not vencimiento.present?
      errors.add(:vencimiento, "Debe colocar un vencimiento")
    elsif vencimiento < Date.today+15.days
    	errors.add(:vencimiento, "No puede ser menor a 15 dias a partir de hoy")
    	
    elsif vencimiento > Date.today+30.days
    	errors.add(:vencimiento, "No puede ser mayor a 30 dias a partir de hoy")
  	end
  end
 

	
def self.search(query)
	if Category.where(name:query).first != nil
		@cat_id=Category.where(name:query).first.id
		where("category_id like ?","%#{@cat_id}%") 
	else
	where("titulo like ? or descripcion like ?", "%#{query}%","%#{query}%") 
	end
end


end
