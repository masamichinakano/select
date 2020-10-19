class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :plan_name, null: false
      t.string :plan_match
      t.string :plan_date, null: false
      t.string :place, null: false
      t.text :plan_comment
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
