class Attend < ApplicationRecord
  belongs_to :user
  belongs_to :schedule
  with_options presence: true do
    validates :attend_name_id, numericality: {only_integer: true}
  end
end
