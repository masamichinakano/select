class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :members
  has_many :matchs
  has_many :fronts


  with_options presence: true do
    validates :name, :email, :password, uniqueness: true
  end

end
