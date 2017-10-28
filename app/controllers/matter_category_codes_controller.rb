class MatterCategoryCodesController < ApplicationController
  before_action :set_matter_category_code, only: [:show, :edit, :update, :destroy]

  # GET /matter_category_codes
  # GET /matter_category_codes.json
  def index
    @matter_category_codes = MatterCategoryCode.all
  end

  # GET /matter_category_codes/1
  # GET /matter_category_codes/1.json
  def show
  end

  # GET /matter_category_codes/new
  def new
    @matter_category_code = MatterCategoryCode.new
  end

  # GET /matter_category_codes/1/edit
  def edit
  end

  # POST /matter_category_codes
  # POST /matter_category_codes.json
  def create
    @matter_category_code = MatterCategoryCode.new(matter_category_code_params)

    respond_to do |format|
      if @matter_category_code.save
        format.html { redirect_to @matter_category_code, notice: 'Matter category code was successfully created.' }
        format.json { render :show, status: :created, location: @matter_category_code }
      else
        format.html { render :new }
        format.json { render json: @matter_category_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_category_codes/1
  # PATCH/PUT /matter_category_codes/1.json
  def update
    respond_to do |format|
      if @matter_category_code.update(matter_category_code_params)
        format.html { redirect_to @matter_category_code, notice: 'Matter category code was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_category_code }
      else
        format.html { render :edit }
        format.json { render json: @matter_category_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_category_codes/1
  # DELETE /matter_category_codes/1.json
  def destroy
    @matter_category_code.destroy
    respond_to do |format|
      format.html { redirect_to matter_category_codes_url, notice: 'Matter category code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_category_code
      @matter_category_code = MatterCategoryCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_category_code_params
      params.require(:matter_category_code).permit(:category_code_id, :matter_category_id)
    end
end
