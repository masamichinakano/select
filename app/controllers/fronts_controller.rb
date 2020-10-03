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
    params.require(:front).merge(user_id: current_user.id, match_id: @match.id)

    # params.permit(:f_attack, :s_attack, :first_fa_inning, :second_fa_inning, :first_sa_inning, :second_sa_inning, :f_total, :s_total).merge(user_id: current_user.id, match_id: @match.id)
  end

  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

end

