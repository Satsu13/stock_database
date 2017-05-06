class MatureInvestmentsController < ApplicationController
  before_action :set_mature_investment, only: [:show, :edit, :update, :destroy]

  # GET /mature_investments
  # GET /mature_investments.json
  def index
    @mature_investments = MatureInvestment.all
  end

  # GET /mature_investments/1
  # GET /mature_investments/1.json
  def show
  end

  # GET /mature_investments/new
  def new
    @mature_investment = MatureInvestment.new
  end

  # GET /mature_investments/1/edit
  def edit
  end

  # POST /mature_investments
  # POST /mature_investments.json
  def create
    @mature_investment = MatureInvestment.new(mature_investment_params)

    respond_to do |format|
      if @mature_investment.save
        format.html { redirect_to @mature_investment, notice: 'Mature investment was successfully created.' }
        format.json { render :show, status: :created, location: @mature_investment }
      else
        format.html { render :new }
        format.json { render json: @mature_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mature_investments/1
  # PATCH/PUT /mature_investments/1.json
  def update
    respond_to do |format|
      if @mature_investment.update(mature_investment_params)
        format.html { redirect_to @mature_investment, notice: 'Mature investment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mature_investment }
      else
        format.html { render :edit }
        format.json { render json: @mature_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mature_investments/1
  # DELETE /mature_investments/1.json
  def destroy
    @mature_investment.destroy
    respond_to do |format|
      format.html { redirect_to mature_investments_url, notice: 'Mature investment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mature_investment
      @mature_investment = MatureInvestment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mature_investment_params
      params.require(:mature_investment).permit(:simulation_id)
    end
end
