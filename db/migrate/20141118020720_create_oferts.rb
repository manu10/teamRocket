class CreateOferts < ActiveRecord::Migration
  def change
    create_table :oferts do |t|
      t.text :motivacion
      t.integer :dinero
      t.references :user, index: true
      t.references :producto, index: true

      t.timestamps
    end
  end
end
