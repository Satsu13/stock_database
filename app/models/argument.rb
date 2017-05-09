class Argument < ApplicationRecord
  belongs_to :simulation
  belongs_to :parameter

  has_and_belongs_to_many :design_axis
end
