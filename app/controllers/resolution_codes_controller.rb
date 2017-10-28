class ResolutionCodesController < ApplicationController
  before_action :set_resolution_code, only: [:show, :edit, :update, :destroy]

  # GET /resolution_codes
  # GET /resolution_codes.json
  def index
    @resolution_codes = ResolutionCode.all
  end

  # GET /resolution_codes/1
  # GET /resolution_codes/1.json
  def show
  end

  # GET /resolution_codes/new
  def new
    @resolution_code = ResolutionCode.new
  end

  # GET /resolution_codes/1/edit
  def edit
  end

  # POST /resolution_codes
  # POST /resolution_codes.json
  def create
    @resolution_code = ResolutionCode.new(resolution_code_params)

    respond_to do |format|
      if @resolution_code.save
        format.html { redirect_to @resolution_code, notice: 'Resolution code was successfully created.' }
        format.json { render :show, status: :created, location: @resolution_code }
      else
        format.html { render :new }
        format.json { render json: @resolution_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resolution_codes/1
  # PATCH/PUT /resolution_codes/1.json
  def update
    respond_to do |format|
      if @resolution_code.update(resolution_code_params)
        format.html { redirect_to @resolution_code, notice: 'Resolution code was successfully updated.' }
        format.json { render :show, status: :ok, location: @resolution_code }
      else
        format.html { render :edit }
        format.json { render json: @resolution_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resolution_codes/1
  # DELETE /resolution_codes/1.json
  def destroy
    @resolution_code.destroy
    respond_to do |format|
      format.html { redirect_to resolution_codes_url, notice: 'Resolution code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolution_code
      @resolution_code = ResolutionCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resolution_code_params
      params.require(:resolution_code).permit(:resolution_code__description)
    end
end
