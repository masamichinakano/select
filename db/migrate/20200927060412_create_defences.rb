class CreateDefences < ActiveRecord::Migration[6.0]
  def change
    create_table :defences do |t|
      t.integer :first_defence_id, null: false
      t.integer :second_defence_id, null: false
      t.integer :third_defence_id, null: false
      t.integer :fourth_defence_id, null: false
      t.integer :fifth_defence_id, null: false
      t.integer :sixth_defence_id, null: false
      t.integer :seventh_defence_id, null: false
      t.integer :eighth_defence_id, null: false
      t.integer :ninth_defence_id, null: false
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
