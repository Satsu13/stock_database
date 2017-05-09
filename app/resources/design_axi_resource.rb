class DesignAxiResource < JSONAPI::Resource
  attributes :name
  has_one :parameter, :version
  has_many :arguments
end