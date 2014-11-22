class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :motivo
      t.text :contenido

      t.timestamps
    end
  end
end
