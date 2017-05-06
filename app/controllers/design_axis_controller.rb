class DesignAxisController < ApplicationController
  before_action :set_design_axi, only: [:show, :edit, :update, :destroy]

  # GET /design_axis
  # GET /design_axis.json
  def index
    @design_axis = DesignAxi.all
  end

  # GET /design_axis/1
  # GET /design_axis/1.json
  def show
  end

  # GET /design_axis/new
  def new
    @design_axi = DesignAxi.new
  end

  # GET /design_axis/1/edit
  def edit
  end

  # POST /design_axis
  # POST /design_axis.json
  def create
    @design_axi = DesignAxi.new(design_axi_params)

    respond_to do |format|
      if @design_axi.save
        format.html { redirect_to @design_axi, notice: 'Design axi was successfully created.' }
        format.json { render :show, status: :created, location: @design_axi }
      else
        format.html { render :new }
        format.json { render json: @design_axi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_axis/1
  # PATCH/PUT /design_axis/1.json
  def update
    respond_to do |format|
      if @design_axi.update(design_axi_params)
        format.html { redirect_to @design_axi, notice: 'Design axi was successfully updated.' }
        format.json { render :show, status: :ok, location: @design_axi }
      else
        format.html { render :edit }
        format.json { render json: @design_axi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_axis/1
  # DELETE /design_axis/1.json
  def destroy
    @design_axi.destroy
    respond_to do |format|
      format.html { redirect_to design_axis_url, notice: 'Design axi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_axi
      @design_axi = DesignAxi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_axi_params
      params.require(:design_axi).permit(:name, :parameter_id, :version_id)
    end
end
