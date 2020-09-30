class Fifth < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :fifth_position

  # belongs_to :member
  belongs_to :match

end
