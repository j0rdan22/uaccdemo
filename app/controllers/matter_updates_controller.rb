class MatterUpdatesController < ApplicationController
  before_action :set_matter_update, only: [:show, :edit, :update, :destroy]

  # GET /matter_updates
  # GET /matter_updates.json
  def index
    @matter_updates = MatterUpdate.all
  end

  # GET /matter_updates/1
  # GET /matter_updates/1.json
  def show
  end

  # GET /matter_updates/new
  def new
    @matter_update = MatterUpdate.new
  end

  # GET /matter_updates/1/edit
  def edit
  end

  # POST /matter_updates
  # POST /matter_updates.json
  def create
    @matter_update = MatterUpdate.new(matter_update_params)

    respond_to do |format|
      if @matter_update.save
        format.html { redirect_to @matter_update, notice: 'Matter update was successfully created.' }
        format.json { render :show, status: :created, location: @matter_update }
      else
        format.html { render :new }
        format.json { render json: @matter_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_updates/1
  # PATCH/PUT /matter_updates/1.json
  def update
    respond_to do |format|
      if @matter_update.update(matter_update_params)
        format.html { redirect_to @matter_update, notice: 'Matter update was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_update }
      else
        format.html { render :edit }
        format.json { render json: @matter_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_updates/1
  # DELETE /matter_updates/1.json
  def destroy
    @matter_update.destroy
    respond_to do |format|
      format.html { redirect_to matter_updates_url, notice: 'Matter update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_update
      @matter_update = MatterUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_update_params
      params.require(:matter_update).permit(:matter_id, :update)
    end
end
