class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :credit_cards, dependent: :destroy
  has_one :domicile, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  accepts_nested_attributes_for :credit_cards
  accepts_nested_attributes_for :domicile 
  #####ESTO NO ES PROBLEMA#####

  validates :name, 
  		length: { minimum: 10 }
  validates :DNI, 
  		numericality: { only_integer: true },
  		uniqueness:true,
  		length:{ minimum:6, maximum:8}



end
