class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :image
      t.date :fecha
      t.string :titulo
      t.string :descripcion
      t.date :vencimiento
      t.integer :usuario_id

      t.timestamps
    end
  end
end
