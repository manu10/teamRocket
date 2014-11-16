class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :role
  has_many :credit_cards, dependent: :destroy
  has_one :domicile, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  accepts_nested_attributes_for :credit_cards
  accepts_nested_attributes_for :domicile 
  before_create :set_default_role

 


  validates :name, 
      presence: true,
      length: { minimum: 10, maximum:25}

  validates :DNI, 
      numericality: { only_integer: true },
      presence: true,
      uniqueness:true,
      length:{ minimum:6, maximum:8}

  validates :phone, 
      presence: true,
  		length:{ maximum:18}

  validate :greater_than_18
  private
 def greater_than_18
    if birthDate+18.year > Date.today
      errors.add(:birthDate, "Debes ser mayor de edad para poder usar BestNid")
    end
  end

  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
  





end
