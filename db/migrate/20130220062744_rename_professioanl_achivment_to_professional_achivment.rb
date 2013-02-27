class RenameProfessioanlAchivmentToProfessionalAchivment < ActiveRecord::Migration
  def up
  	rename_table :professioanl_achivments,:professional_achivments
  	rename_table :proffesional_refs,:professional_refs
  end

  def down
  	rename_table :professional_achivments,:professioanl_achivments
  	rename_table :professional_refs,:proffesional_refs
  end
end
