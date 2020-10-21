class Member < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :style


  belongs_to :user
  has_one_attached :image

  validates :image, :name, :age, :style_id, :number, presence: true
  validates :style_id, numericality: { other_than: 0 }
  validates :number, :age, format: {with: /\A[0-9]+\z/}
end
