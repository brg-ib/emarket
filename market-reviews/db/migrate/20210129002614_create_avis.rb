class CreateAvis < ActiveRecord::Migration[6.1]
  def change
    create_table :avis do |t|
      t.string :titre
      t.string :description
      t.integer :score
      t.belongs_to :enseigne, null: false, foreign_key: true

      t.timestamps
    end
  end
end
