class FrontsController < ApplicationController
  def index
    @front = Front.new
    @match = Match.find(params[:match_id])
  end


  def create
    @match = Match.find(params[:match_id])
    @front = Front.new(front_params)
    if @front.save
      redirect_to root_path
    else
      render "index"
    end

  end

  private
  def front_params
    params.require(:front).permit(
     :first_fa_inning, :second_fa_inning, :third_fa_inning, :fourth_fa_inning, :fifth_fa_inning,
     :sixth_fa_inning, :seventh_fa_inning, :eighth_fa_inning, :ninth_fa_inning,
     :first_sa_inning, :second_sa_inning, :third_sa_inning, :fourth_sa_inning, :fifth_sa_inning,
     :sixth_sa_inning, :seventh_sa_inning, :eighth_sa_inning, :ninth_sa_inning).merge(user_id: current_user.id, match_id: @match.id)
  end


end

