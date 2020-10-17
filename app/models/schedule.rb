class Schedule < ApplicationRecord
  belongs_to :user


  validates :plan_name, :plan_date, presence: true

end
