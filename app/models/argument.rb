class Argument < ApplicationRecord
  belongs_to :simulation
  belongs_to :parameter
end
