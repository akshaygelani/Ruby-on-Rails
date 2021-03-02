class CreateCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :credentials do |t|
      t.integer :uid
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
