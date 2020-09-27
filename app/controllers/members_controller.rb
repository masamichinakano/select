class MembersController < ApplicationController
  before_action :move_to_new_user_session, except: [:index]    


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

  def edit
    @member = Member.find(params[:id])
  end

  def update
    # binding.pry
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    if @member.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end


  private
  def member_params
    params.require(:member).permit(:image, :name, :age, :style_id, :number, :pitcher_position_id, :catcher_position_id, :inside_position_id, :outside_position_id, :user_id).merge(user_id: current_user.id)
  end

  def move_to_new_user_session
    redirect_to new_user_session_path unless user_signed_in?   
  end


end
