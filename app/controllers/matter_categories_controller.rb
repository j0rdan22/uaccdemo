class MatterCategoriesController < ApplicationController
  before_action :set_matter_category, only: [:show, :edit, :update, :destroy]

  # GET /matter_categories
  # GET /matter_categories.json
  def index
    @matter_categories = MatterCategory.all
  end

  # GET /matter_categories/1
  # GET /matter_categories/1.json
  def show
  end

  # GET /matter_categories/new
  def new
    @matter_category = MatterCategory.new
  end

  # GET /matter_categories/1/edit
  def edit
  end

  # POST /matter_categories
  # POST /matter_categories.json
  def create
    @matter_category = MatterCategory.new(matter_category_params)

    respond_to do |format|
      if @matter_category.save
        format.html { redirect_to @matter_category, notice: 'Matter category was successfully created.' }
        format.json { render :show, status: :created, location: @matter_category }
      else
        format.html { render :new }
        format.json { render json: @matter_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matter_categories/1
  # PATCH/PUT /matter_categories/1.json
  def update
    respond_to do |format|
      if @matter_category.update(matter_category_params)
        format.html { redirect_to @matter_category, notice: 'Matter category was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter_category }
      else
        format.html { render :edit }
        format.json { render json: @matter_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matter_categories/1
  # DELETE /matter_categories/1.json
  def destroy
    @matter_category.destroy
    respond_to do |format|
      format.html { redirect_to matter_categories_url, notice: 'Matter category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter_category
      @matter_category = MatterCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_category_params
      params.require(:matter_category).permit(:category_description)
    end
end
