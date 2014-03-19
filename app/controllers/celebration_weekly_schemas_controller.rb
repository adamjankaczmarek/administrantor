class CelebrationWeeklySchemasController < ApplicationController
  before_action :set_celebration_weekly_schema, only: [:show, :edit, :update, :destroy]

  # GET /celebration_weekly_schemas
  # GET /celebration_weekly_schemas.json
  def index
    @celebration_weekly_schemas = CelebrationWeeklySchema.all
  end

  # GET /celebration_weekly_schemas/1
  # GET /celebration_weekly_schemas/1.json
  def show
  end

  # GET /celebration_weekly_schemas/new
  def new
    @celebration_weekly_schema = CelebrationWeeklySchema.new
  end

  # GET /celebration_weekly_schemas/1/edit
  def edit
  end

  # POST /celebration_weekly_schemas
  # POST /celebration_weekly_schemas.json
  def create
    @celebration_weekly_schema = CelebrationWeeklySchema.new(celebration_weekly_schema_params)

    respond_to do |format|
      if @celebration_weekly_schema.save
        format.html { redirect_to @celebration_weekly_schema, notice: 'Celebration weekly schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebration_weekly_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebration_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebration_weekly_schemas/1
  # PATCH/PUT /celebration_weekly_schemas/1.json
  def update
    respond_to do |format|
      if @celebration_weekly_schema.update(celebration_weekly_schema_params)
        format.html { redirect_to @celebration_weekly_schema, notice: 'Celebration weekly schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebration_weekly_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebration_weekly_schemas/1
  # DELETE /celebration_weekly_schemas/1.json
  def destroy
    @celebration_weekly_schema.destroy
    respond_to do |format|
      format.html { redirect_to celebration_weekly_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebration_weekly_schema
      @celebration_weekly_schema = CelebrationWeeklySchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebration_weekly_schema_params
      params.require(:celebration_weekly_schema).permit(:name, :sunday_id, :monday_id, :tuesday_id, :wednesday_id, :thursday_id, :friday_id, :saturday_id)
    end
end
