class CreateFifths < ActiveRecord::Migration[6.0]
  def change
    create_table :fifths do |t|
      t.integer :fifth_name_id
      t.integer :fifth_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
