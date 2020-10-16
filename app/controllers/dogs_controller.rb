class DogsController < ApplicationController
  
  def index
    @dogs = Dog.all 
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort_dogs
    @dogs = Dog.sort_by_employees
    render :index
  end

end
