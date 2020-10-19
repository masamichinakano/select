class AttendsController < ApplicationController
  before_action :authenticate_user!
  before_action :only_schedule_attends, only: [:index]
  before_action :only_attend, only: [:show]
  before_action :set_schedule_find, only: [:new, :create, :show, :edit]
  before_action :set_attend_find, only: [:edit, :update, :destroy]
  before_action :set_member_all, only: [:new, :show, :edit]



  def index  
    @members = Member.all
    @attends = @schedule.attends.all.order("created_at DESC")
  end
  
  def new
    @attends = Attend.all
    @attend = Attend.new
    # m = Member.where()
    m = current_user.members.pluck(:id)
    a = @schedule.attends.pluck(:attend_name_id)
    @b = m - a
    # binding.pry
  end

  def create
    @attend = Attend.new(attend_params)
    if @attend.save
      flash[:attend] = "出席情報を登録しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @attend.update(attend_params)
      flash[:attend_edit] = "出席情報を編集しました。"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @attend.destroy
      flash[:attend_destroy] = "出席情報を削除しました。"
      redirect_to root_path
    else
      render 'show'
    end
  end


  private

  def attend_params
    params.require(:attend).permit(:attend_name_id, :attend_comment).merge(user_id: current_user.id, schedule_id: params[:schedule_id])
  end

  def set_schedule_find
    @schedule = Schedule.find(params[:schedule_id])
  end

  def set_attend_find
    @attend = Attend.find(params[:id])
  end

  def set_member_all
    @members = Member.all
  end

  def only_attend
    @attend = Attend.find(params[:id])
    if current_user.id != @attend.user_id
      redirect_to root_path
    end
  end

  def only_schedule_attends
    @schedule = Schedule.find(params[:schedule_id])
    if current_user.id != @schedule.user_id
      redirect_to root_path
    end
  end

end
