class DutyWeeklySchemasController < ApplicationController
  before_action :set_duty_weekly_schema, only: [:show, :edit, :update, :destroy]

  # GET /duty_weekly_schemas
  # GET /duty_weekly_schemas.json
  def index
    @duty_weekly_schemas = DutyWeeklySchema.all
  end

  # GET /duty_weekly_schemas/1
  # GET /duty_weekly_schemas/1.json
  def show
  end

  # GET /duty_weekly_schemas/new
  def new
    @duty_weekly_schema = DutyWeeklySchema.new
  end

  # GET /duty_weekly_schemas/1/edit
  def edit
  end

  # POST /duty_weekly_schemas
  # POST /duty_weekly_schemas.json
  def create
    @service_daily_schema = ServiceWeeklySchema.find(params[:duty_weekly_schema][:service_weekly_schema_id])
    @duty_weekly_schema = DutyWeeklySchema.fromServiceWeeklySchema(@service_daily_schema)
    @duty_weekly_schema.name = duty_weekly_schema_params[:name]

    respond_to do |format|
      if @duty_weekly_schema.save
        format.html { redirect_to @duty_weekly_schema, notice: 'Duty weekly schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duty_weekly_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @duty_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duty_weekly_schemas/1
  # PATCH/PUT /duty_weekly_schemas/1.json
  def update
    respond_to do |format|
      if @duty_weekly_schema.update(duty_weekly_schema_params)
        format.html { redirect_to @duty_weekly_schema, notice: 'Duty weekly schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duty_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duty_weekly_schemas/1
  # DELETE /duty_weekly_schemas/1.json
  def destroy
    @duty_weekly_schema.destroy
    respond_to do |format|
      format.html { redirect_to duty_weekly_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duty_weekly_schema
      @duty_weekly_schema = DutyWeeklySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_weekly_schema_params
      params.require(:duty_weekly_schema).permit!
    end
end