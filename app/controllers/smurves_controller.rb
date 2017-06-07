class SmurvesController < ApplicationController
  before_action :set_smurf, only: [:show, :edit, :update, :destroy]

  # GET /smurves
  # GET /smurves.json
  def index
    @smurves = Smurf.all
  end

  # GET /smurves/1
  # GET /smurves/1.json
  def show
  end

  # GET /smurves/new
  def new
    @smurf = Smurf.new
  end

  # GET /smurves/1/edit
  def edit
  end

  # POST /smurves
  # POST /smurves.json
  def create
    @smurf = Smurf.new(smurf_params)

    respond_to do |format|
      if @smurf.save
        format.html { redirect_to @smurf, notice: 'Smurf was successfully created.' }
        format.json { render :show, status: :created, location: @smurf }
      else
        format.html { render :new }
        format.json { render json: @smurf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smurves/1
  # PATCH/PUT /smurves/1.json
  def update
    respond_to do |format|
      if @smurf.update(smurf_params)
        format.html { redirect_to @smurf, notice: 'Smurf was successfully updated.' }
        format.json { render :show, status: :ok, location: @smurf }
      else
        format.html { render :edit }
        format.json { render json: @smurf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smurves/1
  # DELETE /smurves/1.json
  def destroy
    @smurf.destroy
    respond_to do |format|
      format.html { redirect_to smurves_url, notice: 'Smurf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smurf
      @smurf = Smurf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smurf_params
      params.require(:smurf).permit(:startdate, :status, :ip, :firstname, :lastname, :login, :password, :cardtype, :creditcardnumber, :email, :paypalemail, :notes)
    end
end
