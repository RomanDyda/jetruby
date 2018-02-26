class Weekdays::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
end