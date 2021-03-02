class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :uid
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
