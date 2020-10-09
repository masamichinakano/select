class MembersController < ApplicationController
  before_action :move_to_new_user_session, except: [:index]    
  before_action :only_player, only: [:show]
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :all_member, only: [:player, :pitch, :catch, :inside, :outside]


  def index
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "選手を登録しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def player
  end

  def pitch
  end

  def catch
  end

  def inside
  end

  def outside
  end

  def edit
  end

  def update
    if @member.update(member_params)
      flash[:edit] = "選手を編集しました。"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @member.destroy
      flash[:destroy_member] = "選手を登録しました。"
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

  def set_member
    @member = Member.find(params[:id])
  end

  def all_member
    @members = Member.all
  end

  def only_player
    @member = Member.find(params[:id])
    if current_user.id != @member.user_id
      redirect_to root_path
    end
  end

end
