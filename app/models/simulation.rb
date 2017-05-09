class Simulation < ApplicationRecord
  belongs_to :version

  has_many :arguments
  has_many :mature_investments
end
