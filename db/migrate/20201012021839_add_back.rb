class AddBack < ActiveRecord::Migration[6.0]
  def change
    add_column :backs, :back_comment, :text
  end
end
