class OrdersController < ApplicationController


  def index
    @members = Member.all
    @order = Order.new
  end






end



