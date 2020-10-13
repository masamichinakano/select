class ChangeFront < ActiveRecord::Migration[6.0]
  def change
    def up
      # Not Null制約を外す場合　not nullを外したいカラム横にtrueを記載
      change_column_null :fronts, :eighth_sa_inning, true
      change_column_null :fronts, :ninth_sa_inning, true

    end
  
    def down
      change_column_null :fronts, :eighth_sa_inning, false
      change_column_null :fronts, :ninth_sa_inning, false
    end
  end
end
