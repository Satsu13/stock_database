class CreateDesignAxis < ActiveRecord::Migration[5.0]
  def change
    create_table :design_axis do |t|
      t.string :name
      t.references :parameter, foreign_key: true
      t.references :version, foreign_key: true

      t.timestamps
    end
  end
end
