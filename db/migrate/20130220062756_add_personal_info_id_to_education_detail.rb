class AddPersonalInfoIdToEducationDetail < ActiveRecord::Migration
  def change
    add_column :education_details, :personal_info_id, :integer
    add_column :additional_infos,:personal_info_id, :integer
    add_column :certificate_informations,:personal_info_id, :integer
    add_column :family_details,:personal_info_id, :integer
    add_column :previous_work_exps,:personal_info_id, :integer
    add_column :professional_achivments,:personal_info_id, :integer
    add_column :professional_refs,:personal_info_id, :integer
    add_column :userlanguages,:personal_info_id, :integer
  end
end
