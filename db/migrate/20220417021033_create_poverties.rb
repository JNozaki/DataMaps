class CreatePoverties < ActiveRecord::Migration[6.0]
  def change
    create_table :poverties do |t|
      t.references :state, null: false, foreign_key: true
      t.integer :total
      t.integer :male
      t.integer :female

      t.timestamps
    end
  end
end
