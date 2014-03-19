class DutyDailiesController < ApplicationController
  before_action :set_duty_daily, only: [:show, :edit, :update, :destroy]

  # GET /duty_dailies
  # GET /duty_dailies.json
  def index
    @duty_dailies = DutyDaily.all
  end

  # GET /duty_dailies/1
  # GET /duty_dailies/1.json
  def show
  end

  # GET /duty_dailies/new
  def new
    @duty_daily = DutyDaily.new
  end

  # GET /duty_dailies/1/edit
  def edit
  end

  # POST /duty_dailies
  # POST /duty_dailies.json
  def create
    @duty_daily = DutyDaily.new(duty_daily_params)

    respond_to do |format|
      if @duty_daily.save
        format.html { redirect_to @duty_daily, notice: 'Duty daily was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duty_daily }
      else
        format.html { render action: 'new' }
        format.json { render json: @duty_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duty_dailies/1
  # PATCH/PUT /duty_dailies/1.json
  def update
    respond_to do |format|
      if @duty_daily.update(duty_daily_params)
        format.html { redirect_to @duty_daily, notice: 'Duty daily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duty_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duty_dailies/1
  # DELETE /duty_dailies/1.json
  def destroy
    @duty_daily.destroy
    respond_to do |format|
      format.html { redirect_to duty_dailies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duty_daily
      @duty_daily = DutyDaily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_daily_params
      params.require(:duty_daily).permit(:duty_daily_schema_id, :service_daily_id)
    end
end
