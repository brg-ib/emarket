class ChangeNom < ActiveRecord::Migration[6.1]
  def change
    rename_column :enseignes, :nom, :name
  end
end
