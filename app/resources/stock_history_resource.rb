class StockHistoryResource < JSONAPI::Resource
  attributes :ticker
  has_many :stock_days
end