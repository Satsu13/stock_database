class Argument < ApplicationRecord
  belongs_to :parameter
  belongs_to :simulation
  
  has_and_belongs_to_many :design_axis
end
