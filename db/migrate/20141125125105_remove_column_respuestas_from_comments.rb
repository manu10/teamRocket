class RemoveColumnRespuestasFromComments < ActiveRecord::Migration
  def change
  	remove_column :comments,:respuesta,:text
  end
end
