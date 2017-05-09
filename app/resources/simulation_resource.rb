class SimulationResource < JSONAPI::Resource
  has_one :version
  has_many :mature_investments, :arguments
end