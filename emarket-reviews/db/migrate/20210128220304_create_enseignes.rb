class CreateEnseignes < ActiveRecord::Migration[6.1]
  def change
    create_table :enseignes do |t|
      t.string :nom
      t.string :label
      t.string :image

      t.timestamps
    end
  end
end
