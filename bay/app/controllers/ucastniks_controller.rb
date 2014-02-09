class UcastniksController < ApplicationController
  before_action :set_ucastnik, only: [:show, :edit, :update, :destroy]

  # GET /ucastniks
  # GET /ucastniks.json
  def index
    @ucastniks = Ucastnik.all
  end

  # GET /ucastniks/1
  # GET /ucastniks/1.json
  def show
  end

  # GET /ucastniks/new
  def new
    @ucastnik = Ucastnik.new
  end

  # GET /ucastniks/1/edit
  def edit
  end

  # POST /ucastniks
  # POST /ucastniks.json
  def create
    @ucastnik = Ucastnik.new(ucastnik_params)

    respond_to do |format|
      if @ucastnik.save
        format.html { redirect_to @ucastnik, notice: 'Ucastnik was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ucastnik }
      else
        format.html { render action: 'new' }
        format.json { render json: @ucastnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ucastniks/1
  # PATCH/PUT /ucastniks/1.json
  def update
    respond_to do |format|
      if @ucastnik.update(ucastnik_params)
        format.html { redirect_to @ucastnik, notice: 'Ucastnik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ucastnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ucastniks/1
  # DELETE /ucastniks/1.json
  def destroy
    @ucastnik.destroy
    respond_to do |format|
      format.html { redirect_to ucastniks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ucastnik
      @ucastnik = Ucastnik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ucastnik_params
      params.require(:ucastnik).permit(:jmeno, :prijmeni, :narozen, :pohlavi)
    end
end
