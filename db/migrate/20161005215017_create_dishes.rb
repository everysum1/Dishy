class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.references :user, foreign_key: true
      t.integer :prep_time
      t.string :ingredients
      t.string :directions
      t.references :category

      t.timestamps
    end
  end
end
