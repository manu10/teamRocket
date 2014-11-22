class Contact 
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :motivo, :contenido
 
  validates_presence_of :motivo
  validates_length_of :contenido,:minimum => 10, :maximum => 500

   def initialize(attributes = {})				#
    attributes.each do |motivo, value|
      send("#{motivo}=", value)
    end
  end

  def persisted?
    false
  end
end
