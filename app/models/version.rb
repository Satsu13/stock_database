class Version < ApplicationRecord
  belongs_to :model

  has_many :simulations
  has_many :design_axis
end
