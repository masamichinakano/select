class CreateSixths < ActiveRecord::Migration[6.0]
  def change
    create_table :sixths do |t|
      t.integer :sixth_name_id, null: false
      t.integer :sixth_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
