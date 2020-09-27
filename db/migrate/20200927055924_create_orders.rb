class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :match_name, null: false
      t.integer :year_id, null: false
      t.integer :month_id, null: false
      t.integer :day_id, null: false
      t.integer :first_order_id, null: false
      t.integer :second_order_id, null: false
      t.integer :third_order_id, null: false
      t.integer :fourth_order_id, null: false
      t.integer :fifth_order_id, null: false
      t.integer :sixth_order_id, null: false
      t.integer :seventh_order_id, null: false
      t.integer :eighth_order_id, null: false
      t.integer :ninth_order_id, null: false
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
