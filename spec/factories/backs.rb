FactoryBot.define do
  factory :back do
    back_first_fa_inning    {"1"}
    back_second_fa_inning   {"1"}
    back_third_fa_inning    {"1"}
    back_fourth_fa_inning   {"1"}
    back_fifth_fa_inning    {"1"}
    back_sixth_fa_inning    {"1"}
    back_seventh_fa_inning  {"1"}
    back_eighth_fa_inning   {"1"}
    back_ninth_fa_inning    {"1"}
    back_first_sa_inning    {"1"}
    back_second_sa_inning   {"1"}
    back_third_sa_inning    {"1"}
    back_fourth_sa_inning   {"1"}
    back_fifth_sa_inning    {"1"}
    back_sixth_sa_inning    {"1"}
    back_seventh_sa_inning  {"1"}
    back_eighth_sa_inning   {"1"}
    back_ninth_sa_inning    {"1"}
    association :user
    association :match
  end
end
