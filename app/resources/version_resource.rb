class VersionResource < JSONAPI::Resource
  attributes :number
  has_one :model
  has_many :design_axis, :simulations
end