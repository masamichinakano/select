class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  has_many :members
  has_many :matchs
  has_many :fronts
  has_many :backs
  has_many :schedules
  has_many :attends


  has_many :sns_credentials


  validates :name, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/}
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i}
  
  
  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # binding.pry
    user = User.where(email: auth.info.email).first_or_initialize(
       name: auth.info.name,
       email: auth.info.email
    )
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
end
