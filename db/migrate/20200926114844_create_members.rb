class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :age, null: false
      t.integer :style_id, null: false
      t.string :number, null: false
      t.boolean :pitcher_position_id, default: false, null: false
      t.boolean :catcher_position_id, default: false, null: false
      t.boolean :inside_position_id, default: false, null: false
      t.boolean :outside_position_id, default: false, null: false
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
