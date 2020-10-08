class Match < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day


  belongs_to :user

  has_one :first
  has_one :second
  has_one :third
  has_one :fourth
  has_one :fifth
  has_one :sixth
  has_one :seventh
  has_one :eighth
  has_one :ninth
  has_one :front
  has_one :back



end
