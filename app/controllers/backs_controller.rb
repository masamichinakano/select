class BacksController < ApplicationController
  def index
    @back = Back.new
    @match = Match.find(params[:match_id])
  end


  def create
    @match = Match.find(params[:match_id])
    binding.pry
    @back = Back.new(back_params)
    if @back.save
      redirect_to root_path
    else
      render "index"
    end

  end

  private
  def back_params
    params.require(:back).permit(
     :back_first_fa_inning, :back_second_fa_inning, :back_third_fa_inning, :back_fourth_fa_inning, :back_fifth_fa_inning,
     :back_sixth_fa_inning, :back_seventh_fa_inning, :back_eighth_fa_inning, :back_ninth_fa_inning,
     :back_first_sa_inning, :back_second_sa_inning, :back_third_sa_inning, :back_fourth_sa_inning, :back_fifth_sa_inning,
     :back_sixth_sa_inning, :back_seventh_sa_inning, :back_eighth_sa_inning, :back_ninth_sa_inning).merge(user_id: current_user.id, match_id: @match.id)
  end


end
