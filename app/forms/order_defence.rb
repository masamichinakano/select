class OrderDefence

  include ActiveModel::Model
  attr_accessor :match_name, :year_id, :month_id, :day_id,
  :first_name_id, :first_position_id,
  :second_name_id, :second_position_id,
  :third_name_id, :third_position_id,
  :fourth_name_id, :fourth_position_id,
  :fifth_name_id, :fifth_position_id,
  :sixth_name_id, :sixth_position_id,
  :seventh_name_id, :seventh_position_id,
  :eighth_name_id, :eighth_position_id,
  :ninth_name_id, :ninth_position_id,
  :user_id

  # match.rbのバリデーション
  validates :match_name, :year_id, :month_id, :day_id, presence: true

  #ポシションごとのバリデーション
  validates :first_name_id, :first_position_id, :second_name_id, :second_position_id, :third_name_id, :third_position_id, :fourth_name_id, :fourth_position_id, :fifth_name_id, :fifth_position_id, :sixth_name_id, :sixth_position_id, :seventh_name_id, :seventh_position_id, :eighth_name_id, :eighth_position_id, :ninth_name_id, :ninth_position_id, presence: true

  





  validates :year_id, :month_id, :day_id, :first_position_id, :second_position_id, :third_position_id, :fourth_position_id, :fifth_position_id, :sixth_position_id, :seventh_position_id, :eighth_position_id, :ninth_position_id, numericality: { other_than: 0 }



  def save
    match = Match.create(match_name: match_name, year_id: year_id, month_id: month_id, day_id: day_id, user_id: user_id)
    First.create(first_name_id: first_name_id, first_position_id: first_position_id, match_id: match.id)
    Second.create(second_name_id: second_name_id, second_position_id: second_position_id, match_id: match.id)
    Third.create(third_name_id: third_name_id, third_position_id: third_position_id, match_id: match.id)
    Fourth.create(fourth_name_id: fourth_name_id, fourth_position_id: fourth_position_id, match_id: match.id)
    Fifth.create(fifth_name_id: fifth_name_id, fifth_position_id: fifth_position_id, match_id: match.id)
    Sixth.create(sixth_name_id: sixth_name_id, sixth_position_id: sixth_position_id, match_id: match.id)
    Seventh.create(seventh_name_id: seventh_name_id, seventh_position_id: seventh_position_id, match_id: match.id)
    Eighth.create(eighth_name_id: eighth_name_id, eighth_position_id: eighth_position_id, match_id: match.id)
    Ninth.create(ninth_name_id: ninth_name_id, ninth_position_id: ninth_position_id, match_id: match.id)

  end

end