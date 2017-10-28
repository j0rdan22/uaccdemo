class PartyMattersController < ApplicationController
  before_action :set_party_matter, only: [:show, :edit, :update, :destroy]

  # GET /party_matters
  # GET /party_matters.json
  def index
    @party_matters = PartyMatter.all
  end

  # GET /party_matters/1
  # GET /party_matters/1.json
  def show
  end

  # GET /party_matters/new
  def new
    @party_matter = PartyMatter.new
  end

  # GET /party_matters/1/edit
  def edit
  end

  # POST /party_matters
  # POST /party_matters.json
  def create
    @party_matter = PartyMatter.new(party_matter_params)

    respond_to do |format|
      if @party_matter.save
        format.html { redirect_to @party_matter, notice: 'Party matter was successfully created.' }
        format.json { render :show, status: :created, location: @party_matter }
      else
        format.html { render :new }
        format.json { render json: @party_matter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_matters/1
  # PATCH/PUT /party_matters/1.json
  def update
    respond_to do |format|
      if @party_matter.update(party_matter_params)
        format.html { redirect_to @party_matter, notice: 'Party matter was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_matter }
      else
        format.html { render :edit }
        format.json { render json: @party_matter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_matters/1
  # DELETE /party_matters/1.json
  def destroy
    @party_matter.destroy
    respond_to do |format|
      format.html { redirect_to party_matters_url, notice: 'Party matter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_matter
      @party_matter = PartyMatter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_matter_params
      params.require(:party_matter).permit(:matter_id, :party_id)
    end
end
