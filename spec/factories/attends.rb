FactoryBot.define do
  factory :attend do
    attend_name_id     {1}
    attend_comment     {"コメント"}
    association :schedule
    association :user

  end
end
