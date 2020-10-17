class Schedule < ApplicationRecord
  belongs_to :user
  has_many :attends

  validates :plan_name, :plan_date, presence: true

end
