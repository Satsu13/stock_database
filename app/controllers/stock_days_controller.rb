class StockDaysController < ApplicationController
  before_action :set_stock_day, only: [:show, :edit, :update, :destroy]

  # GET /stock_days
  # GET /stock_days.json
  def index
    @stock_days = StockDay.all
  end

  # GET /stock_days/1
  # GET /stock_days/1.json
  def show
  end

  # GET /stock_days/new
  def new
    @stock_day = StockDay.new
  end

  # GET /stock_days/1/edit
  def edit
  end

  # POST /stock_days
  # POST /stock_days.json
  def create
    @stock_day = StockDay.new(stock_day_params)

    respond_to do |format|
      if @stock_day.save
        format.html { redirect_to @stock_day, notice: 'Stock day was successfully created.' }
        format.json { render :show, status: :created, location: @stock_day }
      else
        format.html { render :new }
        format.json { render json: @stock_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_days/1
  # PATCH/PUT /stock_days/1.json
  def update
    respond_to do |format|
      if @stock_day.update(stock_day_params)
        format.html { redirect_to @stock_day, notice: 'Stock day was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_day }
      else
        format.html { render :edit }
        format.json { render json: @stock_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_days/1
  # DELETE /stock_days/1.json
  def destroy
    @stock_day.destroy
    respond_to do |format|
      format.html { redirect_to stock_days_url, notice: 'Stock day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_day
      @stock_day = StockDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_day_params
      params.require(:stock_day).permit(:value, :date, :stock_historystory_id)
    end
end
