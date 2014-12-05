class AddSoldToOferts < ActiveRecord::Migration
  def change
    add_column :oferts, :sold, :boolean
  end
end
