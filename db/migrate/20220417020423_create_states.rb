class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :german_name
      t.integer :east_west

      t.timestamps
    end
  end
end
