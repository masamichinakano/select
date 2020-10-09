class CreateBacks < ActiveRecord::Migration[6.0]
  def change
    create_table :backs do |t|
      t.integer :back_first_fa_inning, null: false
      t.integer :back_second_fa_inning, null: false
      t.integer :back_third_fa_inning, null: false
      t.integer :back_fourth_fa_inning, null: false
      t.integer :back_fifth_fa_inning, null: false
      t.integer :back_sixth_fa_inning, null: false
      t.integer :back_seventh_fa_inning, null: false
      t.integer :back_eighth_fa_inning, null: false
      t.integer :back_ninth_fa_inning, null: false
      t.integer :back_first_sa_inning, null: false
      t.integer :back_second_sa_inning, null: false
      t.integer :back_third_sa_inning, null: false
      t.integer :back_fourth_sa_inning, null: false
      t.integer :back_fifth_sa_inning, null: false
      t.integer :back_sixth_sa_inning, null: false
      t.integer :back_seventh_sa_inning, null: false
      t.integer :back_eighth_sa_inning, null: false
      t.integer :back_ninth_sa_inning, null: false
      t.string :comment, null: false
      t.references :user, null: false, foreign_key: true            
      t.references :match, null: false, foreign_key: true            
      t.timestamps
    end
  end
end
