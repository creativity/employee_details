class Appraisal < ActiveRecord::Base

  # associations----------------------------------------------------------------------------------------
  belongs_to  :user

  # attributes ----------------------------------------------------------------------------
  attr_accessible :date_of_joining, :description, :total_period_worked, :user_id

  # validations ----------------------------------------------------------------------------
  validates :date_of_joining, :presence => true
  validates :description, :presence => true
  validate  :joining_date

  # callbacks ----------------------------------------------------------------------------
  after_create  :total_days_worked

  # methods ----------------------------------------------------------------------------
  def total_days_worked
    p "dfsdfasdffsadfasdad"
    st = self.date_of_joining.strftime("%Y-%m-%d")
    start_date = Date.parse(st)
    ed = Time.now.strftime("%Y-%m-%d")
    end_date = Date.parse(ed)
    total_days_worked = (end_date-start_date).to_i
    p "11111111111111111"
    p  total_days_worked
    self.total_period_worked = total_days_worked
    self.save
   # self.update_attribute("total_period_worked",total_days_worked)
  end

  def joining_date
    unless (self.date_of_joining < (Time.now).to_date)
      errors[:base] << "Joining date should be less than today's date"
    end

  end

end
