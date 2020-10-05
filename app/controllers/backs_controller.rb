class BacksController < ApplicationController
  def index
    # @back = Back.new
    @match_names
    @match = Match.find(params[:match_id])
    # @match = Match.find_by(id: params[:match_id])
    # binding.pry
    # @matchs = Match.all
    set_product_column
  end





  private
  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

end
