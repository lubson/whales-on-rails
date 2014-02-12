class CNarodnostsController < ApplicationController
  before_action :set_c_narodnost, only: [:show, :edit, :update, :destroy]

  # GET /c_narodnosts
  # GET /c_narodnosts.json
  def index
    @c_narodnosts = CNarodnost.all
  end

  # GET /c_narodnosts/1
  # GET /c_narodnosts/1.json
  def show
  end

  # GET /c_narodnosts/new
  def new
    @c_narodnost = CNarodnost.new
  end

  # GET /c_narodnosts/1/edit
  def edit
  end

  # POST /c_narodnosts
  # POST /c_narodnosts.json
  def create
    @c_narodnost = CNarodnost.new(c_narodnost_params)

    respond_to do |format|
      if @c_narodnost.save
        format.html { redirect_to @c_narodnost, notice: 'C narodnost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @c_narodnost }
      else
        format.html { render action: 'new' }
        format.json { render json: @c_narodnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_narodnosts/1
  # PATCH/PUT /c_narodnosts/1.json
  def update
    respond_to do |format|
      if @c_narodnost.update(c_narodnost_params)
        format.html { redirect_to @c_narodnost, notice: 'C narodnost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @c_narodnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_narodnosts/1
  # DELETE /c_narodnosts/1.json
  def destroy
    @c_narodnost.destroy
    respond_to do |format|
      format.html { redirect_to c_narodnosts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_narodnost
      @c_narodnost = CNarodnost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_narodnost_params
      params.require(:c_narodnost).permit(:poradi, :kod, :nazev)
    end
end
