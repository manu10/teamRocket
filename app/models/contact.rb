class Contact 
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :user_email, :motivo, :contenido
  VALID_EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :user_email, presence:true,length:{maximum:255},format: { with: VALID_EMAIL_FORMAT }
  validates :contenido,presence:true,length: {minimum:10, maximum:500}

   def initialize(attributes = {})				#
    attributes.each do |user_email, value|
      send("#{user_email}=", value)
    end
  end

  def persisted?
    false
  end
end
