class StockHistoriesController < ApplicationController
  def show
    stock_history = StockHistory.find(params[:id])
    render :json => stock_history
  end
end
