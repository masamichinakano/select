class CreateThirds < ActiveRecord::Migration[6.0]
  def change
    create_table :thirds do |t|
      t.integer :third_name_id
      t.integer :third_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
