class CreateAdditionalInfos < ActiveRecord::Migration
  def change
    create_table :additional_infos do |t|
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
