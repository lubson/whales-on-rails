class CRodinnyStavsController < ApplicationController
  before_action :set_c_rodinny_stav, only: [:show, :edit, :update, :destroy]

  # GET /c_rodinny_stavs
  # GET /c_rodinny_stavs.json
  def index
    @c_rodinny_stavs = CRodinnyStav.all
  end

  # GET /c_rodinny_stavs/1
  # GET /c_rodinny_stavs/1.json
  def show
  end

  # GET /c_rodinny_stavs/new
  def new
    @c_rodinny_stav = CRodinnyStav.new
  end

  # GET /c_rodinny_stavs/1/edit
  def edit
  end

  # POST /c_rodinny_stavs
  # POST /c_rodinny_stavs.json
  def create
    @c_rodinny_stav = CRodinnyStav.new(c_rodinny_stav_params)

    respond_to do |format|
      if @c_rodinny_stav.save
        format.html { redirect_to @c_rodinny_stav, notice: 'C rodinny stav was successfully created.' }
        format.json { render action: 'show', status: :created, location: @c_rodinny_stav }
      else
        format.html { render action: 'new' }
        format.json { render json: @c_rodinny_stav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_rodinny_stavs/1
  # PATCH/PUT /c_rodinny_stavs/1.json
  def update
    respond_to do |format|
      if @c_rodinny_stav.update(c_rodinny_stav_params)
        format.html { redirect_to @c_rodinny_stav, notice: 'C rodinny stav was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @c_rodinny_stav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_rodinny_stavs/1
  # DELETE /c_rodinny_stavs/1.json
  def destroy
    @c_rodinny_stav.destroy
    respond_to do |format|
      format.html { redirect_to c_rodinny_stavs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_rodinny_stav
      @c_rodinny_stav = CRodinnyStav.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_rodinny_stav_params
      params.require(:c_rodinny_stav).permit(:poradi, :kod, :nazev)
    end
end
