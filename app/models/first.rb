class First < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :first_position

  # belongs_to :member
  belongs_to :match


end
