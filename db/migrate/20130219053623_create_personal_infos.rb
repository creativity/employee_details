class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.string :preffer_name
      t.text :present_address
      t.text :permanant_address
      t.string :mobile_no
      t.string :residance_no
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :gender
      t.string :blood_group
      t.string :passport_no
      t.string :place_of_issue
      t.string :date_of_issue
      t.date :valid_till
      t.string :hobbies

      t.timestamps
    end
  end
end
