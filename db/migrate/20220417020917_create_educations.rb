class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.references :state, null: false, foreign_key: true
      t.integer :in_school
      t.integer :high_school
      t.integer :college_university
      t.integer :never_diploma

      t.timestamps
    end
  end
end
