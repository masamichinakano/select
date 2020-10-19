class AttendsController < ApplicationController
  def index  
    @schedule = Schedule.find(params[:schedule_id])
    @members = Member.all
    @attends = @schedule.attends.all.order("created_at DESC")
  end
  
  def new
    @members = Member.all
    @schedule = Schedule.find(params[:schedule_id])
    @attends = Attend.all
    
    @attend = Attend.new
  end

  def create
    @schedule = Schedule.find(params[:schedule_id])
    @attend = Attend.new(attend_params)
    if @attend.save
      flash[:attend] = "出席情報を登録しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @members = Member.all
    @schedule = Schedule.find(params[:schedule_id])
    @attend = Attend.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:schedule_id])
    @members = Member.all
    @attend = Attend.find(params[:id])

  end

  def update
    @schedules = Schedule.all
    @members = Member.all
    @attend = Attend.find(params[:id])
    if @attend.update(attend_params)
      flash[:attend_edit] = "出席情報を編集しました。"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @attend = Attend.find(params[:id])
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
end
