class CreateStockDays < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_days do |t|

      t.timestamps
    end
  end
end
