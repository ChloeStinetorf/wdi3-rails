class StocksController < ApplicationController
  before_filter :check_if_logged_in

  def index
    @stocks = Stock.order(:symbol)
  end
  def new
    @stock = Stock.new
  end
  def create
    Stock.create(params[:stock])
    @stocks = Stock.order(:symbol)
  end
  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end