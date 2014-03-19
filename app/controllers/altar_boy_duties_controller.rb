class AltarBoyDutiesController < ApplicationController
  before_action :set_altar_boy_duty, only: [:show, :edit, :update, :destroy]

  # GET /altar_boy_duties
  # GET /altar_boy_duties.json
  def index
    @altar_boy_duties = AltarBoyDuty.all
  end

  # GET /altar_boy_duties/1
  # GET /altar_boy_duties/1.json
  def show
  end

  # GET /altar_boy_duties/new
  def new
    @altar_boy_duty = AltarBoyDuty.new
  end

  # GET /altar_boy_duties/1/edit
  def edit
  end

  # POST /altar_boy_duties
  # POST /altar_boy_duties.json
  def create
    @altar_boy_duty = AltarBoyDuty.new(altar_boy_duty_params)

    respond_to do |format|
      if @altar_boy_duty.save
        format.html { redirect_to @altar_boy_duty, notice: 'Altar boy duty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @altar_boy_duty }
      else
        format.html { render action: 'new' }
        format.json { render json: @altar_boy_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /altar_boy_duties/1
  # PATCH/PUT /altar_boy_duties/1.json
  def update
    respond_to do |format|
      if @altar_boy_duty.update(altar_boy_duty_params)
        format.html { redirect_to @altar_boy_duty, notice: 'Altar boy duty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @altar_boy_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /altar_boy_duties/1
  # DELETE /altar_boy_duties/1.json
  def destroy
    @altar_boy_duty.destroy
    respond_to do |format|
      format.html { redirect_to altar_boy_duties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_altar_boy_duty
      @altar_boy_duty = AltarBoyDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def altar_boy_duty_params
      params.require(:altar_boy_duty).permit(:altar_boy_id, :duty_id)
    end
end
