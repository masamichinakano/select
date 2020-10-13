class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :members
  has_many :matchs
  has_many :fronts
  has_many :backs


  validates :name, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/}
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i}

end
