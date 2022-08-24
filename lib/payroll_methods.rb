module PayrollMethods
    module ClassMethods
        def payee(salary, benefits)
            monthly_taxable_pay = salary + benefits
            if monthly_taxable_pay >23000 && monthly_taxable_pay <=24000
                return monthly_taxable_pay*0.1
              elsif monthly_taxable_pay >= 24001 && monthly_taxable_pay <= 32333 
                return monthly_taxable_pay*0.25
              elsif monthly_taxable_pay >= 32333
                return monthly_taxable_pay*0.3
              else
                return 0 
              end 
        end

        def nhif_deductions(salary, benefits)
            gross_salary = salary + benefits
            if gross_salary >1000 && gross_salary <=5999
                return 150
              elsif gross_salary > 5999 && gross_salary <= 29999 
                return 850 
              elsif gross_salary >29999 && gross_salary <=44999
                return 1000
              elsif gross_salary >= 100000 
                return 1700
              else
                return 0 
              end 
        end

        def nssf_deductions(salary, benefits)
            monthly_taxable_pay = salary + benefits
            if monthly_taxable_pay > 1000
                return 400
            else 
                return 0
            end
        end

        
    def gross_salary(salary, benefits)
        salary + benefits
    end
    def net_salary(salary, benefits)
       
        total_tax_deductions = self.payee(salary, benefits) + self.nhif_deductions(salary, benefits) + self.nssf_deductions(salary, benefits)
        (salary + benefits) - total_tax_deductions
    end
    end
end