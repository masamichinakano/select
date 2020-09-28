class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :match_name, null: false
      t.integer :year_id, null: false
      t.integer :month_id, null: false
      t.integer :day_id, null: false
      t.references :user, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
