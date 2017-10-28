class MatterStatusesController < ApplicationController
  before_action :set_matter_status, only: [:show, :edit, :update, :destroy]

  # GET /matter_statuses
  # GET /matter_statuses.json
  def index
    @matter_statuses = MatterStatus.all
  end

  # GET /matter_statuses/1
  # GET /matter_statuses/1.json
  def show
  end

  # GET /matter_statuses/new
  def new
    @matter_status = MatterStatus.new
  end

  # GET /matter_statuses/1/edit
  def edit
  end

  # POST /matter_statuses
  # POST /matter_statuses.json
  def create
    @matter_status = MatterStatus.new(matter_status_params)

    respond_to do |format|
      if @matter_status.save
        format.html { redirect_to @matter_status, notice: 'Matter status was successfully created.' }
        format.json { render :show, status: :created, location: @matter_status }
      else
        format.html { render :new }
        format.json { render json: @matter_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_statuses/1
  # PATCH/PUT /matter_statuses/1.json
  def update
    respond_to do |format|
      if @matter_status.update(matter_status_params)
        format.html { redirect_to @matter_status, notice: 'Matter status was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_status }
      else
        format.html { render :edit }
        format.json { render json: @matter_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_statuses/1
  # DELETE /matter_statuses/1.json
  def destroy
    @matter_status.destroy
    respond_to do |format|
      format.html { redirect_to matter_statuses_url, notice: 'Matter status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_status
      @matter_status = MatterStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_status_params
      params.require(:matter_status).permit(:status_description)
    end
end
