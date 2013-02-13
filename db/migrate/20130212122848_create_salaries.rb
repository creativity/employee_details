class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :user_id, :null => false
      t.integer :target_year, :null => false
      t.integer :target_month, :null => false
      t.boolean :target_day_1
      t.boolean :target_day_2
      t.boolean :target_day_3
      t.boolean :target_day_4
      t.boolean :target_day_5
      t.boolean :target_day_6
      t.boolean :target_day_7
      t.boolean :target_day_8
      t.boolean :target_day_9
      t.boolean :target_day_10
      t.boolean :target_day_11
      t.boolean :target_day_12
      t.boolean :target_day_13
      t.boolean :target_day_14
      t.boolean :target_day_15
      t.boolean :target_day_16
      t.boolean :target_day_17
      t.boolean :target_day_18
      t.boolean :target_day_19
      t.boolean :target_day_20
      t.boolean :target_day_21
      t.boolean :target_day_22
      t.boolean :target_day_23
      t.boolean :target_day_24
      t.boolean :target_day_25
      t.boolean :target_day_26
      t.boolean :target_day_27
      t.boolean :target_day_28
      t.boolean :target_day_29
      t.boolean :target_day_30
      t.boolean :target_day_31
      t.integer :dayrate, :null => false, :default => 0
      t.integer :working_days, :null => false, :default => 0
      t.integer :basic_salary, :null => false, :default => 0
      t.integer :travel_expense, :null => false, :default => 0
      t.integer :others, :null => false, :default => 0
      t.integer :total_payable, :null => false, :default => 0
      t.integer :cash_advance, :null => false, :default => 0
      t.integer :other_deduction, :null => false, :default => 0
      t.integer :net_payable, :null => false, :default => 0
      t.timestamps
    end
    add_index :salaries, :user_id
  end
end
