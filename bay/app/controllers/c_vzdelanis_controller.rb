class CVzdelanisController < ApplicationController
  before_action :set_c_vzdelani, only: [:show, :edit, :update, :destroy]

  # GET /c_vzdelanis
  # GET /c_vzdelanis.json
  def index
    @c_vzdelanis = CVzdelani.all
  end

  # GET /c_vzdelanis/1
  # GET /c_vzdelanis/1.json
  def show
  end

  # GET /c_vzdelanis/new
  def new
    @c_vzdelani = CVzdelani.new
  end

  # GET /c_vzdelanis/1/edit
  def edit
  end

  # POST /c_vzdelanis
  # POST /c_vzdelanis.json
  def create
    @c_vzdelani = CVzdelani.new(c_vzdelani_params)

    respond_to do |format|
      if @c_vzdelani.save
        format.html { redirect_to @c_vzdelani, notice: 'C vzdelani was successfully created.' }
        format.json { render action: 'show', status: :created, location: @c_vzdelani }
      else
        format.html { render action: 'new' }
        format.json { render json: @c_vzdelani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_vzdelanis/1
  # PATCH/PUT /c_vzdelanis/1.json
  def update
    respond_to do |format|
      if @c_vzdelani.update(c_vzdelani_params)
        format.html { redirect_to @c_vzdelani, notice: 'C vzdelani was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @c_vzdelani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_vzdelanis/1
  # DELETE /c_vzdelanis/1.json
  def destroy
    @c_vzdelani.destroy
    respond_to do |format|
      format.html { redirect_to c_vzdelanis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_vzdelani
      @c_vzdelani = CVzdelani.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_vzdelani_params
      params.require(:c_vzdelani).permit(:poradi, :kod, :nazev)
    end
end
