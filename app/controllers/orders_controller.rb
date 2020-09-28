class OrdersController < ApplicationController


  def index
    @members = Member.all
    @order = OrderDefence.new.include(@members)
  end

  def create
    binding.pry
    @order = OrderDefence.new(order_params).include(@members)
    if @order.save
      return redirect_to root_path
    else
      render "index"
    end
  end


  private
  def order_params
    params.require(:order_defence).permit(:match_name, :year_id, :month_id, :day_id, :match_id, :position_id, ).merge(user_id: current_user.id)
  end

end



