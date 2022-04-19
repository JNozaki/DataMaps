class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.references :state, null: false, foreign_key: true
      t.integer :household
      t.integer :male_hourly
      t.integer :female_hourly

      t.timestamps
    end
  end
end
