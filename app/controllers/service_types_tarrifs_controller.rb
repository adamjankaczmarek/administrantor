class ServiceTypesTarrifsController < ApplicationController
  before_action :set_service_types_tarrif, only: [:show, :edit, :update, :destroy]

  # GET /service_types_tarrifs
  # GET /service_types_tarrifs.json
  def index
    @service_types_tarrifs = ServiceTypesTarrif.all
  end

  # GET /service_types_tarrifs/1
  # GET /service_types_tarrifs/1.json
  def show
  end

  # GET /service_types_tarrifs/new
  def new
    @service_types_tarrif = ServiceTypesTarrif.new
  end

  # GET /service_types_tarrifs/1/edit
  def edit
  end

  # POST /service_types_tarrifs
  # POST /service_types_tarrifs.json
  def create
    @service_types_tarrif = ServiceTypesTarrif.new(service_types_tarrif_params)

    respond_to do |format|
      if @service_types_tarrif.save
        format.html { redirect_to @service_types_tarrif, notice: 'Service types tarrif was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_types_tarrif }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_types_tarrif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_types_tarrifs/1
  # PATCH/PUT /service_types_tarrifs/1.json
  def update
    respond_to do |format|
      if @service_types_tarrif.update(service_types_tarrif_params)
        format.html { redirect_to @service_types_tarrif, notice: 'Service types tarrif was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_types_tarrif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_types_tarrifs/1
  # DELETE /service_types_tarrifs/1.json
  def destroy
    @service_types_tarrif.destroy
    respond_to do |format|
      format.html { redirect_to service_types_tarrifs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_types_tarrif
      @service_types_tarrif = ServiceTypesTarrif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_types_tarrif_params
      params.require(:service_types_tarrif).permit(:service_type_id, :tarrif_id, :points)
    end
end
