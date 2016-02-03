class HomeController < ApplicationController
  before_action :set_garrage, only: [:show, :edit, :update, :destroy]

  # GET /garrages
  # GET /garrages.json
  def index
    @garrages = Garrage.all
    @garrage = Garrage.new
  end

end
