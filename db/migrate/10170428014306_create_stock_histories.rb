class CreateStockHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_histories do |t|

      t.timestamps
    end
  end
end
