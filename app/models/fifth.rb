class Fifth < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :fifth_position

  belongs_to :match

end
