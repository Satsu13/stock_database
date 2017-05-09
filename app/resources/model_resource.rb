class ModelResource < JSONAPI::Resource
  attributes :name
  has_many :versions
end