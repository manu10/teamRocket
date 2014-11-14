class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.string :owner
      t.date :expireDate
      t.integer :securityCode
      t.references :user, index: true

      t.timestamps
    end
  end
end
