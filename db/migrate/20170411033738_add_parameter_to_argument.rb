class AddParameterToArgument < ActiveRecord::Migration[5.0]
  def change
    add_reference :arguments, :parameter, foreign_key: true
  end
end
