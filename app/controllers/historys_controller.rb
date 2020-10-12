class HistorysController < ApplicationController
  before_action :authenticate_user!
  before_action :search_product, only: [:index, :search]
  before_action :set_product_column, only: [:index, :search]
  before_action :set_front_back, only: [:index, :search, :show, :destroy]
  before_action :set_contents, only: [:show, :destroy]
  before_action :set_match, only: [:show, :destroy]
  # before_action :only_history, only: [:show]


  def index
    @matchs = Match.all.order("created_at DESC")
    @results = @p.result
  end
  
  def search
    @results = @p.result.order("created_at DESC")
  end
  
  def show
  end

  
  def destroy
    if @match.destroy
      flash[:history_destroy] = "試合履歴を削除しました。"
      redirect_to root_path
    else
      render 'show'
    end

  end




  private
  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

  def search_product
    @p = Match.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_front_back
    @fronts = Front.all
    @backs = Back.all
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

  def set_match
    @match = Match.find(params[:id])
  end

  def only_history
    @match = Match.find(params[:id])
    if current_user.id != @match.user_id
      redirect_to root_path
    end
  end


end
