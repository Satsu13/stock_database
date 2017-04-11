class AddSimulationToArgument < ActiveRecord::Migration[5.0]
  def change
    add_reference :arguments, :simulation, foreign_key: true
  end
end
