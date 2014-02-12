class CTitulsController < ApplicationController
  before_action :set_c_titul, only: [:show, :edit, :update, :destroy]

  # GET /c_tituls
  # GET /c_tituls.json
  def index
    @c_tituls = CTitul.all
  end

  # GET /c_tituls/1
  # GET /c_tituls/1.json
  def show
  end

  # GET /c_tituls/new
  def new
    @c_titul = CTitul.new
  end

  # GET /c_tituls/1/edit
  def edit
  end

  # POST /c_tituls
  # POST /c_tituls.json
  def create
    @c_titul = CTitul.new(c_titul_params)

    respond_to do |format|
      if @c_titul.save
        format.html { redirect_to @c_titul, notice: 'C titul was successfully created.' }
        format.json { render action: 'show', status: :created, location: @c_titul }
      else
        format.html { render action: 'new' }
        format.json { render json: @c_titul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_tituls/1
  # PATCH/PUT /c_tituls/1.json
  def update
    respond_to do |format|
      if @c_titul.update(c_titul_params)
        format.html { redirect_to @c_titul, notice: 'C titul was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @c_titul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_tituls/1
  # DELETE /c_tituls/1.json
  def destroy
    @c_titul.destroy
    respond_to do |format|
      format.html { redirect_to c_tituls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_titul
      @c_titul = CTitul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_titul_params
      params.require(:c_titul).permit(:poradi, :kod, :nazev)
    end
end
