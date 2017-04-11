class AddVersionToSimulation < ActiveRecord::Migration[5.0]
  def change
    add_reference :simulations, :version, foreign_key: true
  end
end
