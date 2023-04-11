require_relative 'Employee'

class SalariedEmployee < Employee
    attr_accessor :salary, :fracWork
    def initialize(id, fname, lname, middleInitial, deptcode, salary, fracWork)
        super(id, fname, lname, middleInitial, deptcode)
        @salary = salary
        @fracWork = fracWork
    end
    
    def calculateSalary
        @monthlySalary = @salary*@fracWork
    end
    
    def printSalariedEmployee
        calculateSalary
        puts "Salaried Employee:"
        printEmployee
        puts "Monthly Salary: $#{@salary}"
        puts "Fraction of Hours Worked: #{@fracWork}"
        puts "Total Monthly Salary: $#{@monthlySalary}"
        puts
    end
    
end
