class CreateEighths < ActiveRecord::Migration[6.0]
  def change
    create_table :eighths do |t|
      t.integer :eighth_name_id, null: false
      t.integer :eight_position_id, null: false
      t.references :member, null: false, foreign_key: true            
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
