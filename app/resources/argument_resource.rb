class ArgumentResource < JSONAPI::Resource
  attributes :value
  has_one :simulation, :parameter, :design_axi
end