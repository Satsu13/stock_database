class StockHistoriesController < ApplicationController
  def show
    puts "SHOWING"
    stock_history = StockHistories.find(params[:id])
    render :json => stock_history
  end
end
