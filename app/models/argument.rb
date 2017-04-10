class Argument < ApplicationRecord
  belongs_to :parameter
  belongs_to :simulation
  
  attr_accessor :value
end
