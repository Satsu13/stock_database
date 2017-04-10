class StockHistory < ApplicationRecord
  has_many :stock_days
  
  attr_accessor :ticker
end
