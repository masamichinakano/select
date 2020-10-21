FactoryBot.define do
  factory :schedule do
    plan_name      {"関西大会"}
    plan_match     {"ソフトバンク"}
    plan_date      {"2020-02-02"}
    place          {"東京ドーム"}
    plan_comment   {"コメント"}
    association :user
  end
end
