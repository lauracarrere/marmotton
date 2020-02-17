class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating
      t.integer :time
      t.integer :difficulty
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
