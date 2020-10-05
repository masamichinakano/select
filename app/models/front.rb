class Front < ApplicationRecord
  belongs_to :user
  belongs_to :match
  # has_one :score
  
end
