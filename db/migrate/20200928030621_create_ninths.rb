class CreateNinths < ActiveRecord::Migration[6.0]
  def change
    create_table :ninths do |t|
      t.integer :ninth_name_id, null: false
      t.integer :ninth_position_id, null: false
      t.references :member, null: false, foreign_key: true            
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
