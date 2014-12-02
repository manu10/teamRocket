class ChangeColumnToUsers < ActiveRecord::Migration
  def change
  	change_column :users, :DNI, :string
  	change_column :users, :phone, :string
  end
end
