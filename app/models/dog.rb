class Dog < ApplicationRecord
  has_many :employees

  def self.sort_by_employees
    self.all.sort_by do |dog|
      dog.employees.count
    end.reverse
  end
  
end
