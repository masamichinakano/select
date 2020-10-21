class Front < ApplicationRecord
  belongs_to :user
  belongs_to :match
  with_options presence: true do
    validates :first_fa_inning, :second_fa_inning, :third_fa_inning,
     :fourth_fa_inning, :fifth_fa_inning, :sixth_fa_inning, :seventh_fa_inning,
     :eighth_fa_inning, :ninth_fa_inning, :first_sa_inning, :second_sa_inning, :third_sa_inning,
     :fourth_sa_inning, :fifth_sa_inning, :sixth_sa_inning, :seventh_sa_inning, :eighth_sa_inning,
     :ninth_sa_inning, numericality: {only_integer: true}
  end


  # validates :first_fa_inning, :second_fa_inning, :third_fa_inning, :fourth_fa_inning,
  #  :fifth_fa_inning, :sixth_fa_inning, :seventh_fa_inning, :eighth_fa_inning, :ninth_fa_inning, 
  #  :first_sa_inning, :second_sa_inning, :third_sa_inning, :fourth_sa_inning, :fifth_sa_inning, 
  #  :sixth_sa_inning, :seventh_sa_inning, :eighth_sa_inning, :ninth_sa_inning, presence: true
end
