class Match < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day


  belongs_to :user

  has_one :first, dependent: :destroy
  has_one :second, dependent: :destroy
  has_one :third, dependent: :destroy
  has_one :fourth, dependent: :destroy
  has_one :fifth, dependent: :destroy
  has_one :sixth, dependent: :destroy
  has_one :seventh, dependent: :destroy
  has_one :eighth, dependent: :destroy
  has_one :ninth, dependent: :destroy
  has_one :front, dependent: :destroy
  has_one :back, dependent: :destroy



end
