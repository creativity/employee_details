class Salary < ActiveRecord::Base

  MONTHS = ["January", 1], ["February", 2], ["March", 3], ["April", 4], ["May", 5], ["June", 6], ["July", 7], ["August", 8], ["September", 9], ["October", 10], ["November", 11], ["December", 12]
  # associations ------------------------------------------------------------------------------------------
  belongs_to :user

  # validations ------------------------------------------------------------------------------------------
  validates_presence_of :target_month, :target_year, :basic_salary, :dayrate, :user_id

  # attributes accesible ------------------------------------------------------------------------------------------
  attr_accessible :user_id, :basic_salary, :cash_advance, :dayrate, :net_payable, :other_deduction, :others, :target_month, :target_year, :total_payable, :travel_expense, :working_days, :person_id, :target_day_1, :target_day_2, :target_day_3, :target_day_4, :target_day_5, :target_day_6, :target_day_7, :target_day_8, :target_day_9, :target_day_10, :target_day_11, :target_day_12, :target_day_13, :target_day_14, :target_day_15, :target_day_16, :target_day_17, :target_day_18, :target_day_19, :target_day_20, :target_day_21, :target_day_22, :target_day_23, :target_day_24, :target_day_25, :target_day_26, :target_day_27, :target_day_28, :target_day_29, :target_day_30

  scope :within_month, lambda {|date| where("(target_year) = ? AND (target_month) = ?", date.year.to_i, date.month.to_i)}
end
