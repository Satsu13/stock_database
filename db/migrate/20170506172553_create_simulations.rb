class CreateSimulations < ActiveRecord::Migration[5.0]
  def change
    create_table :simulations do |t|
      t.references :version, foreign_key: true

      t.timestamps
    end
  end
end
