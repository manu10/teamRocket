class ChangeProductos < ActiveRecord::Migration


change_table :productos do |t|
  t.remove :fecha, :image, :usuario_id
end
change_column :productos, :descripcion, :text
end
