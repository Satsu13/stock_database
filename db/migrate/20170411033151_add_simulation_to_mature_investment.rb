class AddSimulationToMatureInvestment < ActiveRecord::Migration[5.0]
  def change
    add_reference :mature_investments, :simulation, foreign_key: true
  end
end
