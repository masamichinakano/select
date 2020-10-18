class AttendsController < ApplicationController
  def index   
    @schedule = Schedule.find(params[:schedule_id])
    @members = Member.all
    # @schedules = Schedule.all
    @attends = Attend.all
  end
  
  def new
    @members = Member.all
    @schedule = Schedule.find(params[:schedule_id])
    @attends = Attend.all
    
    @attend = Attend.new
  end

  def create
    binding.pry
    @schedule = Schedule.find(params[:schedule_id])
    @attend = Attend.new(attend_params)
    if @attend.save
      flash[:attend] = "出席しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @members = Member.all

    @schedules = Schedule.all
    @attend = Attend.find(params[:id])
  end



  private

  def attend_params
    params.require(:attend).permit(:attend_name_id, :attend_comment).merge(user_id: current_user.id, schedule_id: params[:schedule_id])
  end
end
