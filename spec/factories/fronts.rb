FactoryBot.define do
  factory :front do
    first_fa_inning    {"1"}
    second_fa_inning   {"1"}
    third_fa_inning    {"1"}
    fourth_fa_inning   {"1"}
    fifth_fa_inning    {"1"}
    sixth_fa_inning    {"1"}
    seventh_fa_inning  {"1"}
    eighth_fa_inning   {"1"}
    ninth_fa_inning    {"1"}
    first_sa_inning    {"1"}
    second_sa_inning   {"1"}
    third_sa_inning    {"1"}
    fourth_sa_inning   {"1"}
    fifth_sa_inning    {"1"}
    sixth_sa_inning    {"1"}
    seventh_sa_inning  {"1"}
    eighth_sa_inning   {"1"}
    ninth_sa_inning    {"1"}
    association :user
    association :match
  end
end
