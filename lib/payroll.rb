require "pry"
require_relative "./payroll_methods"
=begin
    MILESTONE TASK 
Create a class called Payroll whose major task is to calculate an individual’s Net Salary 
by getting the inputs basic salary and benefits. Create 5 different class methods which 
will calculate the payee (i.e. Tax), NHIFDeductions, NSSFDeductions, gross salary, and net salary. 
    
=end

class Payroll
  extend PayrollMethods::ClassMethods
    def initialize(attr)
        attr.map do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        end
    end
    
    
   
end

data = {id: 2335, first_name: "John", last_name: "Smith", age: 30, basic_salary: 28000, benefits: 10000}


