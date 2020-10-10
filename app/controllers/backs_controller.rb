class BacksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_match, only: [:index, :create]
  before_action :set_contents, only: [:index, :create]


  def index
    @back = Back.new
  end


  def create
    @back = Back.new(back_params)
    if @back.save
      flash[:front] = "試合結果を保存しました。"
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
     :back_sixth_sa_inning, :back_seventh_sa_inning, :back_eighth_sa_inning, :back_ninth_sa_inning, :text).merge(user_id: current_user.id, match_id: @match.id)
  end

  def set_match
    @match = Match.find(params[:match_id])
  end

  def set_contents
    @members = Member.all
    @firsts = First.all
    @seconds = Second.all
    @thirds = Third.all
    @fourths = Fourth.all
    @fifths = Fifth.all
    @sixths = Sixth.all
    @sevenths = Seventh.all
    @eighths = Eighth.all
    @ninths = Ninth.all
  end


end
