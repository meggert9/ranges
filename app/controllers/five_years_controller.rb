class FiveYearsController < ApplicationController
  before_action :set_five_year, only: [:show, :edit, :update, :destroy]

  # GET /five_years
  # GET /five_years.json
  def index
    @five_years = FiveYear.all
  end

  # GET /five_years/1
  # GET /five_years/1.json
  def show
  end

  # GET /five_years/new
  def new
    @five_year = FiveYear.new
  end

  # GET /five_years/1/edit
  def edit
  end

  # POST /five_years
  # POST /five_years.json
  def create
    @five_year = FiveYear.new(five_year_params)

    respond_to do |format|
      if @five_year.save
        format.html { redirect_to @five_year, notice: 'Five year was successfully created.' }
        format.json { render :show, status: :created, location: @five_year }
      else
        format.html { render :new }
        format.json { render json: @five_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /five_years/1
  # PATCH/PUT /five_years/1.json
  def update
    respond_to do |format|
      if @five_year.update(five_year_params)
        format.html { redirect_to @five_year, notice: 'Five year was successfully updated.' }
        format.json { render :show, status: :ok, location: @five_year }
      else
        format.html { render :edit }
        format.json { render json: @five_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /five_years/1
  # DELETE /five_years/1.json
  def destroy
    @five_year.destroy
    respond_to do |format|
      format.html { redirect_to five_years_url, notice: 'Five year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_five_year
      @five_year = FiveYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def five_year_params
      params.require(:five_year).permit(:date, :open, :pitopen, :high, :low, :close)
    end
end
