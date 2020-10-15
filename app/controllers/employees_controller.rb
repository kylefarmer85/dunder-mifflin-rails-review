class EmployeesController < ApplicationController
  before_action :set_employee!, only: [:show, :edit, :update]

  def index
    @employees = Employee.all 
  end

  def show
  end

  def new
    @employee = Employee.new
    
  end

  def edit
  end

  def create
    employee = Employee.new(employee_params)
    if employee.save
      redirect_to employee_path(employee)
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

  private

  def employee_params
    params.require(:employee).permit!
  end

  def set_employee!
    @employee = Employee.find(params[:id])
  end

end
