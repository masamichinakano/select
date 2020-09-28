class CreateSeconds < ActiveRecord::Migration[6.0]
  def change
    create_table :seconds do |t|
      t.integer :second_name_id, null: false
      t.integer :second_position_id, null: false
      t.references :member, null: false, foreign_key: true            
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
