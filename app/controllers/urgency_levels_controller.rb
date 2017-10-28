class UrgencyLevelsController < ApplicationController
  before_action :set_urgency_level, only: [:show, :edit, :update, :destroy]

  # GET /urgency_levels
  # GET /urgency_levels.json
  def index
    @urgency_levels = UrgencyLevel.all
  end

  # GET /urgency_levels/1
  # GET /urgency_levels/1.json
  def show
  end

  # GET /urgency_levels/new
  def new
    @urgency_level = UrgencyLevel.new
  end

  # GET /urgency_levels/1/edit
  def edit
  end

  # POST /urgency_levels
  # POST /urgency_levels.json
  def create
    @urgency_level = UrgencyLevel.new(urgency_level_params)

    respond_to do |format|
      if @urgency_level.save
        format.html { redirect_to @urgency_level, notice: 'Urgency level was successfully created.' }
        format.json { render :show, status: :created, location: @urgency_level }
      else
        format.html { render :new }
        format.json { render json: @urgency_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urgency_levels/1
  # PATCH/PUT /urgency_levels/1.json
  def update
    respond_to do |format|
      if @urgency_level.update(urgency_level_params)
        format.html { redirect_to @urgency_level, notice: 'Urgency level was successfully updated.' }
        format.json { render :show, status: :ok, location: @urgency_level }
      else
        format.html { render :edit }
        format.json { render json: @urgency_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urgency_levels/1
  # DELETE /urgency_levels/1.json
  def destroy
    @urgency_level.destroy
    respond_to do |format|
      format.html { redirect_to urgency_levels_url, notice: 'Urgency level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urgency_level
      @urgency_level = UrgencyLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urgency_level_params
      params.require(:urgency_level).permit(:level_description)
    end
end
