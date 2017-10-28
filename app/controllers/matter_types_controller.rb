class MatterTypesController < ApplicationController
  before_action :set_matter_type, only: [:show, :edit, :update, :destroy]

  # GET /matter_types
  # GET /matter_types.json
  def index
    @matter_types = MatterType.all
  end

  # GET /matter_types/1
  # GET /matter_types/1.json
  def show
  end

  # GET /matter_types/new
  def new
    @matter_type = MatterType.new
  end

  # GET /matter_types/1/edit
  def edit
  end

  # POST /matter_types
  # POST /matter_types.json
  def create
    @matter_type = MatterType.new(matter_type_params)

    respond_to do |format|
      if @matter_type.save
        format.html { redirect_to @matter_type, notice: 'Matter type was successfully created.' }
        format.json { render :show, status: :created, location: @matter_type }
      else
        format.html { render :new }
        format.json { render json: @matter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_types/1
  # PATCH/PUT /matter_types/1.json
  def update
    respond_to do |format|
      if @matter_type.update(matter_type_params)
        format.html { redirect_to @matter_type, notice: 'Matter type was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_type }
      else
        format.html { render :edit }
        format.json { render json: @matter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_types/1
  # DELETE /matter_types/1.json
  def destroy
    @matter_type.destroy
    respond_to do |format|
      format.html { redirect_to matter_types_url, notice: 'Matter type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_type
      @matter_type = MatterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_type_params
      params.require(:matter_type).permit(:type_description)
    end
end
