class AddNameToDesignAxi < ActiveRecord::Migration[5.0]
  def change
    add_column :design_axis, :name, :string
  end
end
