class MatterSourcesController < ApplicationController
  before_action :set_matter_source, only: [:show, :edit, :update, :destroy]

  # GET /matter_sources
  # GET /matter_sources.json
  def index
    @matter_sources = MatterSource.all
  end

  # GET /matter_sources/1
  # GET /matter_sources/1.json
  def show
  end

  # GET /matter_sources/new
  def new
    @matter_source = MatterSource.new
  end

  # GET /matter_sources/1/edit
  def edit
  end

  # POST /matter_sources
  # POST /matter_sources.json
  def create
    @matter_source = MatterSource.new(matter_source_params)

    respond_to do |format|
      if @matter_source.save
        format.html { redirect_to @matter_source, notice: 'Matter source was successfully created.' }
        format.json { render :show, status: :created, location: @matter_source }
      else
        format.html { render :new }
        format.json { render json: @matter_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_sources/1
  # PATCH/PUT /matter_sources/1.json
  def update
    respond_to do |format|
      if @matter_source.update(matter_source_params)
        format.html { redirect_to @matter_source, notice: 'Matter source was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_source }
      else
        format.html { render :edit }
        format.json { render json: @matter_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_sources/1
  # DELETE /matter_sources/1.json
  def destroy
    @matter_source.destroy
    respond_to do |format|
      format.html { redirect_to matter_sources_url, notice: 'Matter source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_source
      @matter_source = MatterSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_source_params
      params.require(:matter_source).permit(:source_description)
    end
end
