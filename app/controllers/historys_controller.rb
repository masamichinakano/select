class HistorysController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @matchs = Match.all.order("created_at DESC")
    @results = @p.result
    set_product_column
  end
  
  def search
    @results = @p.result
    set_product_column
    
  end
  
  def show
    @match = Match.find(params[:id])
    @fronts = Front.all
    @backs = Back.all
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
    set_product_column

  end


  private
  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

  def search_product
    @p = Match.ransack(params[:q])  # 検索オブジェクトを生成
  end

end
