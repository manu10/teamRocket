class AddFieldsToMoney < ActiveRecord::Migration
  def change
    add_column :money, :user, :string
    add_column :money, :product, :string
  end
end
