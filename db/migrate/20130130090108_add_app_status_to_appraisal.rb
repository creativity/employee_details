class AddAppStatusToAppraisal < ActiveRecord::Migration
  def change
    add_column :appraisals, :app_status, :string
  end
end
