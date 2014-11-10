class AgregarProductoIdAComments < ActiveRecord::Migration
  def change
  	add_column :comments,:producto_id,:integer
  end
end
