class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.date :fecha
      t.string :titulo
      t.string :descripcion
      t.date :vencimiento

      t.timestamps 
    end
  end
end
