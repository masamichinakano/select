class Member < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :style


  belongs_to :user
  has_one_attached :image
  has_one :first
  has_one :second
  has_one :third
  has_one :fourth
  has_one :fifth
  has_one :sixth
  has_one :seventh
  has_one :eight
  has_one :ninth

  validates :image, :name, :age, :style_id, :number, presence: true
  validates :style_id, numericality: { other_than: 0 }

end
