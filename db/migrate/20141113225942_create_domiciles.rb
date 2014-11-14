class CreateDomiciles < ActiveRecord::Migration
  def change
    create_table :domiciles do |t|
      t.integer :number
      t.string :street
      t.string :city
      t.string :province
      t.string :country
      t.references :user, index: true

      t.timestamps
    end
  end
end
