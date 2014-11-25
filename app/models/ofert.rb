class Ofert < ActiveRecord::Base
  belongs_to :user
  belongs_to :producto
  default_scope -> { order('created_at DESC') }
  validates :user_id , presence: true
  validates :producto_id, presence: true
  validates :motivacion,presence:true,length:{minimum:10}
  validates :dinero,presence:true,numericality:{only_integer:true , greater_than_or_equal_to:1}

end
