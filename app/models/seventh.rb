class Seventh < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :seventh_position

  belongs_to :member
  belongs_to :match

end
