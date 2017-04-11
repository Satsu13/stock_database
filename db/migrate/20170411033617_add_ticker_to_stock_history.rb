class AddTickerToStockHistory < ActiveRecord::Migration[5.0]
  def change
    add_column :stock_histories, :ticker, :string
  end
end
