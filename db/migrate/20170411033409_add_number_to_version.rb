class AddNumberToVersion < ActiveRecord::Migration[5.0]
  def change
    add_column :versions, :number, :integer
  end
end
