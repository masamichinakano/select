class Back < ApplicationRecord
  belongs_to :user
  belongs_to :match

  validates :back_first_fa_inning, :back_second_fa_inning, :back_third_fa_inning, :back_fourth_fa_inning,
  :back_fifth_fa_inning, :back_sixth_fa_inning, :back_seventh_fa_inning, :back_eighth_fa_inning, :back_ninth_fa_inning, 
  :back_first_sa_inning, :back_second_sa_inning, :back_third_sa_inning, :back_fourth_sa_inning, :back_fifth_sa_inning, 
  :back_sixth_sa_inning, :back_seventh_sa_inning, :back_eighth_sa_inning, :back_ninth_sa_inning, format: {with: /\A[0-9]+\z/}
  


  validates :back_first_fa_inning, :back_second_fa_inning, :back_third_fa_inning, :back_fourth_fa_inning,
   :back_fifth_fa_inning, :back_sixth_fa_inning, :back_seventh_fa_inning, :back_eighth_fa_inning, :back_ninth_fa_inning, 
   :back_first_sa_inning, :back_second_sa_inning, :back_third_sa_inning, :back_fourth_sa_inning, :back_fifth_sa_inning, 
   :back_sixth_sa_inning, :back_seventh_sa_inning, :back_eighth_sa_inning, :back_ninth_sa_inning, presence: true

end
