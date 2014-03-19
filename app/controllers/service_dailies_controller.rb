class ServiceDailiesController < ApplicationController
  before_action :set_service_daily, only: [:show, :edit, :update, :destroy]

  # GET /service_dailies
  # GET /service_dailies.json
  def index
    @service_dailies = ServiceDaily.all
  end

  # GET /service_dailies/1
  # GET /service_dailies/1.json
  def show
  end

  # GET /service_dailies/new
  def new
    @service_daily = ServiceDaily.new
  end

  # GET /service_dailies/1/edit
  def edit
  end

  # POST /service_dailies
  # POST /service_dailies.json
  def create
    @service_daily = ServiceDaily.new(service_daily_params)

    respond_to do |format|
      if @service_daily.save
        format.html { redirect_to @service_daily, notice: 'Service daily was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_daily }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_dailies/1
  # PATCH/PUT /service_dailies/1.json
  def update
    respond_to do |format|
      if @service_daily.update(service_daily_params)
        format.html { redirect_to @service_daily, notice: 'Service daily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_dailies/1
  # DELETE /service_dailies/1.json
  def destroy
    @service_daily.destroy
    respond_to do |format|
      format.html { redirect_to service_dailies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_daily
      @service_daily = ServiceDaily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_daily_params
      params.require(:service_daily).permit(:type, :related_id, :cdscds_id, :sds_id)
    end
end
