class Ofert < ActiveRecord::Base
  belongs_to :user
  belongs_to :producto
  default_scope -> { order('created_at DESC') }
  validates :user_id , presence: true
  validates :producto_id, presence: true
end
