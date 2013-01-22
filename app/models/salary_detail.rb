class SalaryDetail < ActiveRecord::Base
  attr_accessible :difference_to_pay, :salary_amount, :salary_deducted, :total_salary, :user_id
end
