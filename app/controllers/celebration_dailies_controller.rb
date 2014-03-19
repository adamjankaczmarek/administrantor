class CelebrationDailiesController < ApplicationController
  before_action :set_celebration_daily, only: [:show, :edit, :update, :destroy]

  # GET /celebration_dailies
  # GET /celebration_dailies.json
  def index
    @celebration_dailies = CelebrationDaily.all
  end

  # GET /celebration_dailies/1
  # GET /celebration_dailies/1.json
  def show
  end

  # GET /celebration_dailies/new
  def new
    @celebration_daily = CelebrationDaily.new
  end

  # GET /celebration_dailies/1/edit
  def edit
  end

  # POST /celebration_dailies
  # POST /celebration_dailies.json
  def create
    @celebration_daily = CelebrationDaily.new(celebration_daily_params)

    respond_to do |format|
      if @celebration_daily.save
        format.html { redirect_to @celebration_daily, notice: 'Celebration daily was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebration_daily }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebration_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebration_dailies/1
  # PATCH/PUT /celebration_dailies/1.json
  def update
    respond_to do |format|
      if @celebration_daily.update(celebration_daily_params)
        format.html { redirect_to @celebration_daily, notice: 'Celebration daily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebration_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebration_dailies/1
  # DELETE /celebration_dailies/1.json
  def destroy
    @celebration_daily.destroy
    respond_to do |format|
      format.html { redirect_to celebration_dailies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebration_daily
      @celebration_daily = CelebrationDaily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebration_daily_params
      params.require(:celebration_daily).permit(:name, :hour, :celebration_type_id)
    end
end
