class CreateStockPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_prices do |t|
      t.integer :price
      t.date :captured_at
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
