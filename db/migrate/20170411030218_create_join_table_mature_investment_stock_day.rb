class CreateJoinTableMatureInvestmentStockDay < ActiveRecord::Migration[5.0]
  def change
    create_join_table :mature_investments, :stock_days do |t|
      # t.index [:mature_investment_id, :stock_day_id]
      # t.index [:stock_day_id, :mature_investment_id]
    end
  end
end
