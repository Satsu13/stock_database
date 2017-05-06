class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.int :number
      t.references :model, foreign_key: true

      t.timestamps
    end
  end
end
