class CPovolanisController < ApplicationController
  before_action :set_c_povolani, only: [:show, :edit, :update, :destroy]

  # GET /c_povolanis
  # GET /c_povolanis.json
  def index
    @c_povolanis = CPovolani.all
  end

  # GET /c_povolanis/1
  # GET /c_povolanis/1.json
  def show
  end

  # GET /c_povolanis/new
  def new
    @c_povolani = CPovolani.new
  end

  # GET /c_povolanis/1/edit
  def edit
  end

  # POST /c_povolanis
  # POST /c_povolanis.json
  def create
    @c_povolani = CPovolani.new(c_povolani_params)

    respond_to do |format|
      if @c_povolani.save
        format.html { redirect_to @c_povolani, notice: 'C povolani was successfully created.' }
        format.json { render action: 'show', status: :created, location: @c_povolani }
      else
        format.html { render action: 'new' }
        format.json { render json: @c_povolani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_povolanis/1
  # PATCH/PUT /c_povolanis/1.json
  def update
    respond_to do |format|
      if @c_povolani.update(c_povolani_params)
        format.html { redirect_to @c_povolani, notice: 'C povolani was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @c_povolani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_povolanis/1
  # DELETE /c_povolanis/1.json
  def destroy
    @c_povolani.destroy
    respond_to do |format|
      format.html { redirect_to c_povolanis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_povolani
      @c_povolani = CPovolani.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_povolani_params
      params.require(:c_povolani).permit(:poradi, :kod, :nazev)
    end
end
