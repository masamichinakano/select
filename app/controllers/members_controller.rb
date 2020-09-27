class MembersController < ApplicationController

  def index
  end

  def new
    @member = Member.new
  end

  def create
    # binding.pry
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def player
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end



  private
  def member_params
    params.require(:member).permit(:image, :name, :age, :style_id, :number, :pitcher_position_id, :catcher_position_id, :inside_position_id, :outside_position_id, :user_id).merge(user_id: current_user.id)
  end


end
