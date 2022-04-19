class CreatePopulations < ActiveRecord::Migration[6.0]
  def change
    create_table :populations do |t|
      t.references :state, null: false, foreign_key: true
      t.integer :total
      t.integer :german
      t.integer :foreigner
      t.integer :other_eu
      t.integer :female
      t.integer :male

      t.timestamps
    end
  end
end
