class StockHistoriesController < ApplicationController
  def show
      @stock_history = StockHistories.find(params[:id])
      render :json => @stock_history
  end
end
