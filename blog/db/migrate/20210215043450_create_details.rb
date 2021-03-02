class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
