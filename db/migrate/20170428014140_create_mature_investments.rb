class CreateMatureInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :mature_investments do |t|

      t.timestamps
    end
  end
end
