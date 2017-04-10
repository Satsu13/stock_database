class Model < ApplicationRecord
  attr_accessor :name
  
  has_many :versions
end
