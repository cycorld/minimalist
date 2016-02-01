class GarragesController < ApplicationController
  before_action :set_garrage, only: [:show, :edit, :update, :destroy]

  # GET /garrages
  # GET /garrages.json
  def index
    @garrages = Garrage.all
  end

  # GET /garrages/1
  # GET /garrages/1.json
  def show
  end

  # GET /garrages/new
  def new
    @garrage = Garrage.new
  end

  # GET /garrages/1/edit
  def edit
  end

  # POST /garrages
  # POST /garrages.json
  def create
    @garrage = Garrage.new(garrage_params)

    respond_to do |format|
      if @garrage.save
        format.html { redirect_to @garrage, notice: 'Garrage was successfully created.' }
        format.json { render :show, status: :created, location: @garrage }
      else
        format.html { render :new }
        format.json { render json: @garrage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garrages/1
  # PATCH/PUT /garrages/1.json
  def update
    respond_to do |format|
      if @garrage.update(garrage_params)
        format.html { redirect_to @garrage, notice: 'Garrage was successfully updated.' }
        format.json { render :show, status: :ok, location: @garrage }
      else
        format.html { render :edit }
        format.json { render json: @garrage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garrages/1
  # DELETE /garrages/1.json
  def destroy
    @garrage.destroy
    respond_to do |format|
      format.html { redirect_to garrages_url, notice: 'Garrage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garrage
      @garrage = Garrage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garrage_params
      params.require(:garrage).permit(:address, :latitude, :longitude)
    end
end
