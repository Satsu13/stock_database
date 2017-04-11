class AddVersionToDesignAxi < ActiveRecord::Migration[5.0]
  def change
    add_reference :design_axis, :version, foreign_key: true
  end
end
