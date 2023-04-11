require_relative 'Employee'

class HourlyEmployee < Employee
    attr_accessor :hourlyWage, :hoursWorked, :ovTimehours
    def initialize(id, fname, lname, middleInitial, deptcode, hourlyWage, hoursWorked, ovTimehours)
        super(id, fname, lname, middleInitial, deptcode)
        @hourlyWage = hourlyWage
        @hoursWorked = hoursWorked
        @ovTimehours = ovTimehours
    end
    
    def calculateWage
        @normalWage = (@hourlyWage*@hoursWorked)
        @ovTimeWage = 1.5*@hourlyWage*@ovTimehours
        @TotalWage = @normalWage + @ovTimeWage
    end
    
    def printHourlyEmployee
        calculateWage
        puts "Hourly Paid Employee: "
        printEmployee
        puts "Hourly Wage: $#{@hourlyWage}"
        puts "Hours Worked: $#{@hoursWorked}"
        if ovTimehours > 0
            puts "Normal Hours Wage: $#{@normalWage} "
            puts "Overtime Hours Worked: $#{@ovTimehours}"
            puts "Overtime Wage: $#{@ovTimeWage}"
            puts "Total Wage including Overtime: $#{@TotalWage}"
        else
            puts "Total Wage: $#{@TotalWage}"
        end
        puts
    end
    
end

