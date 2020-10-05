class CreateFronts < ActiveRecord::Migration[6.0]
  def change
    create_table :fronts do |t|
      t.integer :first_fa_inning, null: false
      t.integer :second_fa_inning, null: false
      t.integer :third_fa_inning, null: false
      t.integer :fourth_fa_inning, null: false
      t.integer :fifth_fa_inning, null: false
      t.integer :sixth_fa_inning, null: false
      t.integer :seventh_fa_inning, null: false
      t.integer :eighth_fa_inning, null: false
      t.integer :ninth_fa_inning, null: false
      t.integer :f_total, null: false
      t.integer :first_sa_inning, null: false
      t.integer :second_sa_inning, null: false
      t.integer :third_sa_inning, null: false
      t.integer :fourth_sa_inning, null: false
      t.integer :fifth_sa_inning, null: false
      t.integer :sixth_sa_inning, null: false
      t.integer :seventh_sa_inning, null: false
      t.integer :eighth_sa_inning, null: false
      t.integer :ninth_sa_inning, null: false
      t.integer :s_total, null: false
      t.references :user, null: false, foreign_key: true            
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
