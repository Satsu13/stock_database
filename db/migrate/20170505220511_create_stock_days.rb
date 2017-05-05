class CreateStockDays < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_days do |t|
      t.float :value
      t.date :date
      t.references :stock_historystory, foreign_key: true

      t.timestamps
    end
  end
end
