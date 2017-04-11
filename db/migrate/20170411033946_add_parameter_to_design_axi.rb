class AddParameterToDesignAxi < ActiveRecord::Migration[5.0]
  def change
    add_reference :design_axis, :parameter, foreign_key: true
  end
end
