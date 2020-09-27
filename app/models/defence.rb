class Defence < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :first_defence
  belongs_to_active_hash :second_defence
  belongs_to_active_hash :third_defence
  belongs_to_active_hash :fourth_defence
  belongs_to_active_hash :fifth_defence
  belongs_to_active_hash :sixth_defence
  belongs_to_active_hash :seventh_defence
  belongs_to_active_hash :eighth_defence
  belongs_to_active_hash :ninth_defence



  belongs_to :user
  belongs_to :order
end
