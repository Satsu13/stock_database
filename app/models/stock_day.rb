class StockDay < ApplicationRecord
  belongs_to :stock_historystory

  has_and_belongs_to_many :mature_investments
end
