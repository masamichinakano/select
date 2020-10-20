class Fourth < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :fourth_position

  belongs_to :match

end
