class ServiceWeeklySchemasController < ApplicationController
  before_action :set_service_weekly_schema, only: [:show, :edit, :update, :destroy]

  # GET /service_weekly_schemas
  # GET /service_weekly_schemas.json
  def index
    @service_weekly_schemas = ServiceWeeklySchema.all
  end

  # GET /service_weekly_schemas/1
  # GET /service_weekly_schemas/1.json
  def show
  end

  # GET /service_weekly_schemas/new
  def new
    @service_weekly_schema = ServiceWeeklySchema.new
  end

  # GET /service_weekly_schemas/1/edit
  def edit
  end

  # POST /service_weekly_schemas
  # POST /service_weekly_schemas.json
  def create
    @service_weekly_schema = ServiceWeeklySchema.new(service_weekly_schema_params)

    respond_to do |format|
      if @service_weekly_schema.save
        format.html { redirect_to @service_weekly_schema, notice: 'Service weekly schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_weekly_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_weekly_schemas/1
  # PATCH/PUT /service_weekly_schemas/1.json
  def update
    respond_to do |format|
      if @service_weekly_schema.update(service_weekly_schema_params)
        format.html { redirect_to @service_weekly_schema, notice: 'Service weekly schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_weekly_schemas/1
  # DELETE /service_weekly_schemas/1.json
  def destroy
    @service_weekly_schema.destroy
    respond_to do |format|
      format.html { redirect_to service_weekly_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_weekly_schema
      @service_weekly_schema = ServiceWeeklySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_weekly_schema_params
      params.require(:service_weekly_schema).permit(:sunday_id, :monday_id, :tuesday_id, :wednesday_id, :thursday_id, :friday_id, :saturday_id, :name)
    end
end
