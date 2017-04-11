class AddStockHistoryToStockDay < ActiveRecord::Migration[5.0]
  def change
    add_reference :stock_days, :stock_history, foreign_key: true
  end
end
