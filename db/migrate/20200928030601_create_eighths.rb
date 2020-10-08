class CreateEighths < ActiveRecord::Migration[6.0]
  def change
    create_table :eighths do |t|
      t.integer :eighth_name_id
      t.integer :eighth_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
