class WeeklyPlansController < ApplicationController
  before_action :set_weekly_plan, only: [:show, :edit, :update, :destroy]

  # GET /weekly_plans
  # GET /weekly_plans.json
  def index
    @weekly_plans = WeeklyPlan.all
  end

  # GET /weekly_plans/1
  # GET /weekly_plans/1.json
  def show
  end

  # GET /weekly_plans/new
  def new
    @weekly_plan = WeeklyPlan.new
  end

  # GET /weekly_plans/1/edit
  def edit
  end

  # POST /weekly_plans
  # POST /weekly_plans.json
  def create
    @weekly_plan = WeeklyPlan.new(weekly_plan_params)

    respond_to do |format|
      if @weekly_plan.save
        format.html { redirect_to @weekly_plan, notice: 'Weekly plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weekly_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @weekly_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_plans/1
  # PATCH/PUT /weekly_plans/1.json
  def update
    respond_to do |format|
      if @weekly_plan.update(weekly_plan_params)
        format.html { redirect_to @weekly_plan, notice: 'Weekly plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weekly_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_plans/1
  # DELETE /weekly_plans/1.json
  def destroy
    @weekly_plan.destroy
    respond_to do |format|
      format.html { redirect_to weekly_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_plan
      @weekly_plan = WeeklyPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_plan_params
      params.require(:weekly_plan).permit(:name, :week_start, :week_end, :duty_weekly_schema_id)
    end
end
