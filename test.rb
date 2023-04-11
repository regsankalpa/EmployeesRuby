require_relative 'Employee'
require_relative 'HourlyEmployee'
require_relative 'SalariedEmployee'

e1 = Employee.new(001, "Jones", "Booker", "T", 22)
e2 = Employee.new(002, "Hendrix", "Jimi", "NMI", 14)
e3 = Employee.new(003, "Morrison", "Jim", "D", 03)

e1.printEmployee
puts
e2.printEmployee
puts
e3.printEmployee
puts

he1 = HourlyEmployee.new(4, "Jasmine", "Velasquez", "Cr", 9003, 10, 20, 0)
he2 = HourlyEmployee.new(5, "Jennifer", "Ortega", "Ar", 9004, 10, 20, 10)

he1.printHourlyEmployee
he2.printHourlyEmployee

se1 = SalariedEmployee.new(6, "Randy", "Orton", "Jr", 314, 5000, 1)
se2 = SalariedEmployee.new(7, "Sunny", "Tyson", "Sr", 344,  6000, 0.5)

se1.printSalariedEmployee
se2.printSalariedEmployee
