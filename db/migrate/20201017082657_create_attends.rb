class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|
      t.integer :attend_name_id, null: false
      t.text :attend_comment
      t.references :user, null: false, foreign_key: true            
      t.references :schedule, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
