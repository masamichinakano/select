class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :f_attack, null: false
      t.integer :s_attack, null: false
      t.integer :first_fa_inning, null: false
      t.integer :second_fa_inning, null: false
      t.integer :first_sa_inning, null: false
      t.integer :second_sa_inning, null: false
      t.integer :f_total, null: false
      t.integer :s_total, null: false
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
