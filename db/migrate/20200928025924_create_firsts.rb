class CreateFirsts < ActiveRecord::Migration[6.0]
  def change
    create_table :firsts do |t|
      t.integer :first_name_id, null: false
      t.integer :first_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
