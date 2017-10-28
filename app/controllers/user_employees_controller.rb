class UserEmployeesController < ApplicationController
  before_action :set_user_employee, only: [:show, :edit, :update, :destroy]

  # GET /user_employees
  # GET /user_employees.json
  def index
    @user_employees = UserEmployee.all
  end

  # GET /user_employees/1
  # GET /user_employees/1.json
  def show
  end

  # GET /user_employees/new
  def new
    @user_employee = UserEmployee.new
  end

  # GET /user_employees/1/edit
  def edit
  end

  # POST /user_employees
  # POST /user_employees.json
  def create
    @user_employee = UserEmployee.new(user_employee_params)

    respond_to do |format|
      if @user_employee.save
        format.html { redirect_to @user_employee, notice: 'User employee was successfully created.' }
        format.json { render :show, status: :created, location: @user_employee }
      else
        format.html { render :new }
        format.json { render json: @user_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_employees/1
  # PATCH/PUT /user_employees/1.json
  def update
    respond_to do |format|
      if @user_employee.update(user_employee_params)
        format.html { redirect_to @user_employee, notice: 'User employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_employee }
      else
        format.html { render :edit }
        format.json { render json: @user_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_employees/1
  # DELETE /user_employees/1.json
  def destroy
    @user_employee.destroy
    respond_to do |format|
      format.html { redirect_to user_employees_url, notice: 'User employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_employee
      @user_employee = UserEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_employee_params
      params.require(:user_employee).permit(:user_name, :password, :employee_id)
    end
end
