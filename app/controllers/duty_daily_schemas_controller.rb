class DutyDailySchemasController < ApplicationController
  before_action :set_duty_daily_schema, only: [:show, :edit, :update, :destroy]

  # GET /duty_daily_schemas
  # GET /duty_daily_schemas.json
  def index
    @duty_daily_schemas = DutyDailySchema.all
  end

  # GET /duty_daily_schemas/1
  # GET /duty_daily_schemas/1.json
  def show
  end

  # GET /duty_daily_schemas/new
  def new
    @duty_daily_schema = DutyDailySchema.new
  end

  # GET /duty_daily_schemas/1/edit
  def edit
  end

  # POST /duty_daily_schemas
  # POST /duty_daily_schemas.json
  def create
    @duty_daily_schema = DutyDailySchema.new(duty_daily_schema_params)

    respond_to do |format|
      if @duty_daily_schema.save
        format.html { redirect_to @duty_daily_schema, notice: 'Duty daily schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duty_daily_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @duty_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duty_daily_schemas/1
  # PATCH/PUT /duty_daily_schemas/1.json
  def update
    respond_to do |format|
      if @duty_daily_schema.update(duty_daily_schema_params)
        format.html { redirect_to @duty_daily_schema, notice: 'Duty daily schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duty_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duty_daily_schemas/1
  # DELETE /duty_daily_schemas/1.json
  def destroy
    @duty_daily_schema.destroy
    respond_to do |format|
      format.html { redirect_to duty_daily_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duty_daily_schema
      @duty_daily_schema = DutyDailySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_daily_schema_params
      params.require(:duty_daily_schema).permit(:name, :service_daily_schema_id)
    end
end
