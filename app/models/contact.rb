class Contact 
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :user_email, :motivo, :contenido
  validates :user_email, presence:true,length:{maximum:255}
  validates :contenido,presence:true,length: {minimum:10, maximum:255}

   def initialize(attributes = {})				#
    attributes.each do |user_email, value|
      send("#{user_email}=", value)
    end
  end

  def persisted?
    false
  end
end
