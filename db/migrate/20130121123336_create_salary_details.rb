class CreateSalaryDetails < ActiveRecord::Migration
  def change
    create_table :salary_details do |t|
      t.integer :user_id
      t.float :salary_amount
      t.float :salary_deducted
      t.float :total_salary
      t.float :difference_to_pay

      t.timestamps
    end
  end
end
