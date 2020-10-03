class FrontsController < ApplicationController
  def index
    @front = Front.new
    # @match = @match_names.find(params[:match_id])
    # @match = Match.find_by(id: params[:match_id])
    # binding.pry
    @matchs = Match.all
    set_product_column
  end


  def create
  end

  private
  def front_params
    params.require(:front).permit(
     :first_fa_inning,:second_fa_inning,:third_fa_inning,:fourth_fa_inning,:fifth_fa_inning,
     :sixth_fa_inning,:seventh_fa_inning,:eighth_fa_inning,:ninth_fa_inning,:f_total,
     :first_sa_inning,:second_sa_inning,:third_sa_inning,:fourth_sa_inning,:fifth_sa_inning,
     :sixth_sa_inning,:seventh_sa_inning,:eighth_sa_inning,:ninth_sa_inning,:s_total, null: false
    ).merge(user_id: current_user.id, match_id: @match.id)
  end

  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

end

