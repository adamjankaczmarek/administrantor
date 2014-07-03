class TariffEntriesController < ApplicationController
  before_action :set_tariff_entry, only: [:show, :edit, :update, :destroy]

  # GET /tariff_entries
  # GET /tariff_entries.json
  def index
    @tariff_entries = TariffEntry.all
  end

  # GET /tariff_entries/1
  # GET /tariff_entries/1.json
  def show
  end

  # GET /tariff_entries/new
  def new
    @tariff_entry = TariffEntry.new
  end

  # GET /tariff_entries/1/edit
  def edit
  end

  # POST /tariff_entries
  # POST /tariff_entries.json
  def create
    @tariff_entry = TariffEntry.new(tariff_entry_params)

    respond_to do |format|
      if @tariff_entry.save
        format.html { redirect_to @tariff_entry, notice: 'Tariff entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tariff_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @tariff_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tariff_entries/1
  # PATCH/PUT /tariff_entries/1.json
  def update
    respond_to do |format|
      if @tariff_entry.update(tariff_entry_params)
        format.html { redirect_to @tariff_entry, notice: 'Tariff entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tariff_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tariff_entries/1
  # DELETE /tariff_entries/1.json
  def destroy
    @tariff_entry.destroy
    respond_to do |format|
      format.html { redirect_to tariff_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tariff_entry
      @tariff_entry = TariffEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tariff_entry_params
      params.require(:tariff_entry).permit(:points, :tariff_id, :celebration_type_id)
    end
end
