FactoryBot.define do
  factory :user do
    name {"チーム"}
    email {"aaa@gmail.com"}
    password {'aaa111'}
    password_confirmation {password}
  end
end
