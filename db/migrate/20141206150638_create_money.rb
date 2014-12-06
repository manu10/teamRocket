class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.integer :cash

      t.timestamps
    end
  end
end
