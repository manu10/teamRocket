class AddUrlImageToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :UrlImage, :text
  end
end
