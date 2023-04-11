class Employee
    attr_accessor :id, :fname, :lname, :middleInitial, :deptcode
    def initialize(id, fname, lname, middleInitial, deptcode)
        @id = id
        @fname = fname
        @lname = lname
        @middleInitial = middleInitial
        @deptcode = deptcode
    end
    def printEmployee
        puts "Employee ID: #{@id}"
        puts "Employee Name: #{@lname}, #{@fname} #{@middleInitial}."
        puts "Employee's Department Code: #{@deptcode}"
    end
end


