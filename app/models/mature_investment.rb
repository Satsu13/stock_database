class MatureInvestment < ApplicationRecord
  belongs_to :simulation
  
  has_and_belongs_to_many :stock_days
end
