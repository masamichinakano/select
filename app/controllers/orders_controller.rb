class OrdersController < ApplicationController
  before_action :move_to_index, except: [:index, :ofence]
  before_action :only_order, only: [:show]
  before_action :search_product, only: [:ofence, :search]



  def index
    @order = OrderDefence.new
  end
  
  def create
    # binding.pry
    @order = OrderDefence.new(order_params)
    if @order.save
      return redirect_to root_path
    else
      render "index"
    end
  end

  def ofence
    @matchs = Match.all.order("created_at DESC")
    @results = @p.result
    set_product_column
    # set_product_column
  end

  def show
    @match = Match.find(params[:id])
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

  def only_order
    @match = Match.find(params[:id])
    if current_user.id != @match.user_id
      redirect_to root_path
    end
  end

  def search
    @results = @p.result
    set_product_column

  end



  private
  def order_params
    params.require(:order_defence).permit(:match_name, :year_id, :month_id, :day_id,
    :first_name_id, :first_position_id, :second_name_id, :second_position_id, :third_name_id, :third_position_id,
    :fourth_name_id, :fourth_position_id, :fifth_name_id, :fifth_position_id, :sixth_name_id, :sixth_position_id,
    :seventh_name_id, :seventh_position_id, :eighth_name_id, :eighth_position_id, :ninth_name_id, :ninth_position_id
    ).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to "index"
    end
  end

  def set_product_column
    @match_names = Match.select("match_name").distinct  # 重複なくnameカラムのデータを取り出す
  end

  def search_product
    @p = Match.ransack(params[:q])  # 検索オブジェクトを生成
  end


end



