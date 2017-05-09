class ParameterResource < JSONAPI::Resource
  attributes :name
  has_many :design_axis, :arguments
end