class SchedulesController < ApplicationController
  before_action :search_schedule_product, only: [:index, :search]
  before_action :set_schedule_product_column, only: [:index, :search]

  


  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:schedule] = "予定を登録しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end


  def search
    @results_schedule = @x.result
    
  end



  private

  def schedule_params
    params.require(:schedule).permit(:plan_name, :plan_match, :plan_date, :place, :plan_comment).merge(user_id: current_user.id)
  end


  def set_schedule_product_column
    @schedule_names = Schedule.select("plan_name").distinct  # 重複なくnameカラムのデータを取り出す
    @schedule_matchs = Schedule.select("plan_match").distinct  # 重複なくnameカラムのデータを取り出す

  end


  def search_schedule_product
    @x = Schedule.ransack(params[:q])  # 検索オブジェクトを生成
  end


end
