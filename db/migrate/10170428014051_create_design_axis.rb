class CreateDesignAxis < ActiveRecord::Migration[5.0]
  def change
    create_table :design_axis do |t|

      t.timestamps
    end
  end
end
