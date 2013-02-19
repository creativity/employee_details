class CreateProfessioanlAchivments < ActiveRecord::Migration
  def change
    create_table :professioanl_achivments do |t|
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
