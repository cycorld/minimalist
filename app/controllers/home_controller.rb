class HomeController < ApplicationController
  before_action :set_garrage, only: [:show, :edit, :update, :destroy]

  # GET /garrages
  # GET /garrages.json
  def index
    @garrages = Garrage.all
    @garrage = Garrage.find_by(id: params[:garrage_id])
    if params[:garrage_id].present?
      @stuffs = @garrage.stuffs
    else
      @stuffs = Stuff.all
    end
    @garrage = Garrage.new
  end

end
