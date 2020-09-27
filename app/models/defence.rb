class Defence < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id


  validates :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, presence: true
  validates :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, numericality: { other_than: 0 } 

  belongs_to :user
end
