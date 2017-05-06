class CreateArguments < ActiveRecord::Migration[5.0]
  def change
    create_table :arguments do |t|
      t.float :value
      t.references :simulation, foreign_key: true
      t.references :parameter, foreign_key: true

      t.timestamps
    end
  end
end
