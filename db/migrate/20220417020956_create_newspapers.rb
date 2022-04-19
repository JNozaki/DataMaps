class CreateNewspapers < ActiveRecord::Migration[6.0]
  def change
    create_table :newspapers do |t|
      t.references :state, null: false, foreign_key: true
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
