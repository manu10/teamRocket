class CreateAddColumnToUsers < ActiveRecord::Migration
  def change
    create_table :add_column_to_users do |t|
      t.string :name
      t.integer :DNI
      t.string :street
      t.integer :numStreet
      t.string :city
      t.string :province
      t.string :country
      t.date :datebirth

      t.timestamps
    end
  end


