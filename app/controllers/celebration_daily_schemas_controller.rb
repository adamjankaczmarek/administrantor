class CelebrationDailySchemasController < ApplicationController
  before_action :set_celebration_daily_schema, only: [:show, :edit, :update, :destroy]

  # GET /celebration_daily_schemas
  # GET /celebration_daily_schemas.json
  def index
    @celebration_daily_schemas = CelebrationDailySchema.all
  end

  # GET /celebration_daily_schemas/1
  # GET /celebration_daily_schemas/1.json
  def show
  end

  # GET /celebration_daily_schemas/new
  def new
    @celebration_daily_schema = CelebrationDailySchema.new
  end

  # GET /celebration_daily_schemas/1/edit
  def edit
  end

  # POST /celebration_daily_schemas
  # POST /celebration_daily_schemas.json
  def create
    @celebration_daily_schema = CelebrationDailySchema.new(celebration_daily_schema_params)

    respond_to do |format|
      if @celebration_daily_schema.save
        format.html { redirect_to @celebration_daily_schema, notice: 'Celebration daily schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebration_daily_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebration_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebration_daily_schemas/1
  # PATCH/PUT /celebration_daily_schemas/1.json
  def update
    respond_to do |format|
      if @celebration_daily_schema.update(celebration_daily_schema_params)
        format.html { redirect_to @celebration_daily_schema, notice: 'Celebration daily schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebration_daily_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebration_daily_schemas/1
  # DELETE /celebration_daily_schemas/1.json
  def destroy
    @celebration_daily_schema.destroy
    respond_to do |format|
      format.html { redirect_to celebration_daily_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebration_daily_schema
      @celebration_daily_schema = CelebrationDailySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebration_daily_schema_params
      params.require(:celebration_daily_schema).permit(:name, :celebration_dailies_attributes => [:id, :name, :hour, :celebration_type_id])
    end
end
