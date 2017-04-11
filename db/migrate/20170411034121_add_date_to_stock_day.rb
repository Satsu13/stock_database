class AddDateToStockDay < ActiveRecord::Migration[5.0]
  def change
    add_column :stock_days, :date, :date
  end
end
