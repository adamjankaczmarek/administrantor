class CelebrationTypesController < ApplicationController
  before_action :set_celebration_type, only: [:show, :edit, :update, :destroy]

  # GET /celebration_types
  # GET /celebration_types.json
  def index
    @celebration_types = CelebrationType.all
  end

  # GET /celebration_types/1
  # GET /celebration_types/1.json
  def show
  end

  # GET /celebration_types/new
  def new
    @celebration_type = CelebrationType.new
  end

  # GET /celebration_types/1/edit
  def edit
  end

  # POST /celebration_types
  # POST /celebration_types.json
  def create
    @celebration_type = CelebrationType.new(celebration_type_params)

    respond_to do |format|
      if @celebration_type.save
        format.html { redirect_to @celebration_type, notice: 'Celebration type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebration_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebration_types/1
  # PATCH/PUT /celebration_types/1.json
  def update
    respond_to do |format|
      if @celebration_type.update(celebration_type_params)
        format.html { redirect_to @celebration_type, notice: 'Celebration type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebration_types/1
  # DELETE /celebration_types/1.json
  def destroy
    @celebration_type.destroy
    respond_to do |format|
      format.html { redirect_to celebration_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebration_type
      @celebration_type = CelebrationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebration_type_params
      params.require(:celebration_type).permit(:name)
    end
end
