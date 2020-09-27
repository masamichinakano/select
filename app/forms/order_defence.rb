class OrderDefence

  include ActiveModel::Model
  attr_accessor :match_name, :year_id, :month_id, :day_id, :first_order_id, :second_order_id, :third_order_id, :fourth_order_id, :fifth_order_id, :sixth_order_id, :seventh_order_id, :eighth_order_id, :ninth_order_id, :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, :user_id

  # order.rbのバリデーション
  validates :match_name, :year_id, :month_id, :day_id, :first_order_id, :second_order_id, :third_order_id, :fourth_order_id, :fifth_order_id, :sixth_order_id, :seventh_order_id, :eighth_order_id, :ninth_order_id, presence: true
  validates :first_order_id, :second_order_id, :third_order_id, :fourth_order_id, :fifth_order_id, :sixth_order_id, :seventh_order_id, :eighth_order_id, :ninth_order_id, numericality: { other_than: 0 }

  # defence.rbのバリデーション
  validates :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, presence: true
  validates :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, numericality: { other_than: 0 } 


  def save
    order = Order.create(match_name: match_name, year_id: year_id, month_id: month_id, day_id: day_id, first_order_id: first_order_id, second_order_id: second_order_id, third_order_id: third_order_id, fourth_order_id: fourth_order_id, fifth_order_id: fifth_order_id, sixth_order_id: sixth_order_id, seventh_order_id: seventh_order_id, eighth_order_id: eighth_order_id, ninth_order_id: ninth_order_id, user_id: user_id)
    Defence.create(first_defence_id: first_defence_id, second_defence_id: second_defence_id, third_defence_id: third_defence_id, fourth_defence_id: fourth_defence_id, fifth_defence_id: fifth_defence_id, sixth_defence_id: sixth_defence_id, seventh_defence_id: seventh_defence_id, eighth_defence_id: eighth_defence_id, ninth_defence_id: ninth_defence_id, user_id: user.id, order_id: order.id)
  end

end