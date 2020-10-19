class Attend < ApplicationRecord
  belongs_to :user
  belongs_to :schedule

  validates :attend_name_id, presence: true

end
