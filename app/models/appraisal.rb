class Appraisal < ActiveRecord::Base

  # attributes ----------------------------------------------------------------------------
  attr_accessible :date_of_joining, :description, :total_period_worked, :user_id

  # validations ----------------------------------------------------------------------------
  validates :date_of_joining, :presence => true
  validates :description, :presence => true

  # callbacks ----------------------------------------------------------------------------
  after_save  :total_days_worked

  # methods ----------------------------------------------------------------------------
  def total_days_worked
    p "dfsdfasdffsadfasdad"
    st = self.date_of_joining.strftime("%Y-%m-%d")
    start_date = Date.parse(st)
    ed = Time.now.strftime("%Y-%m-%d")
    end_date = Date.parse(ed)
    total_period_worked = (end_date-start_date).to_i
    return  total_period_worked
  end

end
