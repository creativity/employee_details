class CreatePreviousWorkExps < ActiveRecord::Migration
  def change
    create_table :previous_work_exps do |t|
      t.string :organisation
      t.string :duration
      t.string :department
      t.string :designation
      t.text :reason_to_leave

      t.timestamps
    end
  end
end
