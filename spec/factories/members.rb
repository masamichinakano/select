FactoryBot.define do
  factory :member do
    name              {"山田太郎"}
    age                   {"30"}
    style_id              {1}
    number              {"1"}
    pitcher_position_id   {1}
    catcher_position_id   {1}
    inside_position_id    {1}
    outside_position_id   {1}
    association :user

    after(:build) do |member|
      member.image.attach(io: File.open('public/images/dar.jpg'), filename: 'dar.jpg')
    end
  end
end