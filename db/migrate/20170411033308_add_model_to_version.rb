class AddModelToVersion < ActiveRecord::Migration[5.0]
  def change
    add_reference :versions, :model, foreign_key: true
  end
end
