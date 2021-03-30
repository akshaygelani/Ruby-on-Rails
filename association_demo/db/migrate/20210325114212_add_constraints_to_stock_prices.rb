class AddConstraintsToStockPrices < ActiveRecord::Migration[5.0]
  def change
    remove_column :stock_prices, :price
    add_column :stock_prices, :price, :integer, null: false

    remove_column :stock_prices, :captured_at
    add_column :stock_prices, :captured_at, :date, null: false
  end
end
