class StockDayResource < JSONAPI::Resource
  attributes :value, :date
  has_one :stock_history
end