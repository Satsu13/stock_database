class MatureInvestmentResource < JSONAPI::Resource
  has_one :simulation
  has_many :stock_days
end