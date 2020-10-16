class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all 
  end

  def show
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def edit
    @dogs = Dog.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      
      render :new
    end
  end
  
  def update
    @employee.update(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path, notice: "Employee Deleted!"
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
