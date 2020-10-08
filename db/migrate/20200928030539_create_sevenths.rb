class CreateSevenths < ActiveRecord::Migration[6.0]
  def change
    create_table :sevenths do |t|
      t.integer :seventh_name_id
      t.integer :seventh_position_id, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
