class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  private
  def team_params
    params.require(:member).permit(:name).merge(user_id: current_user.id)
  end


end
