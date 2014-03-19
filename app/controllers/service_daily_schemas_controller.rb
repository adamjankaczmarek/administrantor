class ServiceDailySchemasController < ApplicationController
  before_action :set_service_daily_schema, only: [:show, :edit, :update, :destroy]

  # GET /service_daily_schemas
  # GET /service_daily_schemas.json
  def index
    @service_daily_schemas = ServiceDailySchema.all
  end

  # GET /service_daily_schemas/1
  # GET /service_daily_schemas/1.json
  def show
  end

  # GET /service_daily_schemas/new
  def new
    @service_daily_schema = ServiceDailySchema.new
  end

  # GET /service_daily_schemas/1/edit
  def edit
  end

  # POST /service_daily_schemas
  # POST /service_daily_schemas.json
  def create
    @celebration_daily_schema = CelebrationDailySchema.find(params[:service_daily_schema][:celebration_daily_schema_id])
    @service_daily_schema = ServiceDailySchema.fromCelebrationDailySchema(@celebration_daily_schema)
    @service_daily_schema.name = service_daily_schema_params[:name]

    respond_to do |format|
      if @service_daily_schema.save
        format.html { redirect_to @service_daily_schema, notice: 'Service daily schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_daily_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_daily_schemas/1
  # PATCH/PUT /service_daily_schemas/1.json
  def update
    respond_to do |format|
      if @service_daily_schema.update(service_daily_schema_params)
        format.html { redirect_to @service_daily_schema, notice: 'Service daily schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_daily_schemas/1
  # DELETE /service_daily_schemas/1.json
  def destroy
    @service_daily_schema.destroy
    respond_to do |format|
      format.html { redirect_to service_daily_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_daily_schema
      @service_daily_schema = ServiceDailySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_daily_schema_params
      params.require(:service_daily_schema).permit(:celebration_daily_schema, :name,  :service_dailies_attributes => [:id, :service_type_id, :related_id])
    end
end
