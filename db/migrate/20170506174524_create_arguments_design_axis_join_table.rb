class CreateArgumentsDesignAxisJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :arguments, :design_axis do |t|
      t.index [:argument_id, :design_axi_id], unique: true
      # t.index [:design_axi_id, :argument_id]
    end
  end
end
