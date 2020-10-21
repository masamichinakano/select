FactoryBot.define do
  factory :match do
    match_name            {"ソフトバンク"}
    year_id               {1}
    month_id              {1}
    day_id                {1}
    association :user
  end
end
