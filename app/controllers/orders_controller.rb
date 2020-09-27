class OrdersController < ApplicationController


  def index
    @members = Member.all
    @order = OrderDefence.new
  end

  def create
    binding.pry
    @members = Member.all
    @order = OrderDefence.new(order_params)
    if @order.save
      return redirect_to root_path
    else
      render "index"
    end
  end


  private
  def order_params
    params.require(:order_defence).permit(:match_name, :year_id, :month_id, :day_id, :first_order_id, :second_order_id, :third_order_id, :fourth_order_id, :fifth_order_id, :sixth_order_id, :seventh_order_id, :eighth_order_id, :ninth_order_id, :first_defence_id, :second_defence_id, :third_defence_id, :fourth_defence_id, :fifth_defence_id, :sixth_defence_id, :seventh_defence_id, :eighth_defence_id, :ninth_defence_id, :user_id, :order_id).merge(user_id: current_user.id)
  end

end



