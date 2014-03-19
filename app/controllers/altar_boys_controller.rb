class AltarBoysController < ApplicationController
  before_action :set_altar_boy, only: [:show, :edit, :update, :destroy]

  # GET /altar_boys
  # GET /altar_boys.json
  def index
    @altar_boys = AltarBoy.all
  end

  # GET /altar_boys/1
  # GET /altar_boys/1.json
  def show
  end

  # GET /altar_boys/new
  def new
    @altar_boy = AltarBoy.new
  end

  # GET /altar_boys/1/edit
  def edit
  end

  # POST /altar_boys
  # POST /altar_boys.json
  def create
    @altar_boy = AltarBoy.new(altar_boy_params)

    respond_to do |format|
      if @altar_boy.save
        format.html { redirect_to @altar_boy, notice: 'Altar boy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @altar_boy }
      else
        format.html { render action: 'new' }
        format.json { render json: @altar_boy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /altar_boys/1
  # PATCH/PUT /altar_boys/1.json
  def update
    respond_to do |format|
      if @altar_boy.update(altar_boy_params)
        format.html { redirect_to @altar_boy, notice: 'Altar boy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @altar_boy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /altar_boys/1
  # DELETE /altar_boys/1.json
  def destroy
    @altar_boy.destroy
    respond_to do |format|
      format.html { redirect_to altar_boys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_altar_boy
      @altar_boy = AltarBoy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def altar_boy_params
      params.require(:altar_boy).permit(:name)
    end
end
