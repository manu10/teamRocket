class AddCategoryRefToProducto < ActiveRecord::Migration
  def change
    add_reference :productos, :category, index: true
  end
end
