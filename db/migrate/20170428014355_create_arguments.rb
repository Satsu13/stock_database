class CreateArguments < ActiveRecord::Migration[5.0]
  def change
    create_table :arguments do |t|

      t.timestamps
    end
  end
end
