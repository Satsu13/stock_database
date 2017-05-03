class Version < ApplicationRecord
  belongs_to :model
  
  has_many :design_axis
  has_many :simulations
end
