class StuffsController < ApplicationController
  before_action :set_stuff, only: [:show, :edit, :update, :destroy]

  # GET /stuffs
  # GET /stuffs.json
  def index
    @garrage = Garrage.find_by(id: params[:garrage_id])
    if params[:garrage_id].present?
      @stuffs = @garrage.stuffs
    else
      @stuffs = Stuff.all
    end

  end

  # GET /stuffs/1
  # GET /stuffs/1.json
  def show
    garrage = Garrage.find(params[:garrage_id])
    @stuff = garrage.stuffs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /stuffs/new
  def new
    garrage = Garrage.find(params[:garrage_id])
    @stuff = garrage.stuffs.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /stuffs/1/edit
  def edit
  end

  # POST /stuffs
  # POST /stuffs.json
  def create
    garrage = Garrage.find(params[:garrage_id])
    @stuff = garrage.stuffs.new(params[:stuff])
   # @stuff = @garrage.stuffs.new(stuff_params)

    respond_to do |format|
      if @stuff.save
        format.html { redirect_to @stuff, notice: 'Stuff was successfully created.' }
        format.json { render :show, status: :created, location: @stuff }
      else
        format.html { render :new }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stuffs/1
  # PATCH/PUT /stuffs/1.json
  def update
    respond_to do |format|
      if @stuff.update(stuff_params)
        format.html { redirect_to @stuff, notice: 'Stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @stuff }
      else
        format.html { render :edit }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuffs/1
  # DELETE /stuffs/1.json
  def destroy
    @stuff.destroy
    respond_to do |format|
      format.html { redirect_to stuffs_url, notice: 'Stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuff_params
      params.require(:stuff).permit(:image, :title, :content, :price, :status)
    end
end
