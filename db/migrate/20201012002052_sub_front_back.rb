class SubFrontBack < ActiveRecord::Migration[6.0]
  def change
    add_column :fronts, :front_comment, :text
  end
end
