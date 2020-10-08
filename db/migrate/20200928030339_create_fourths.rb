class CreateFourths < ActiveRecord::Migration[6.0]
  def change
    create_table :fourths do |t|
      t.integer :fourth_name_id
      t.integer :fourth_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
