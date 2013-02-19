class CreateCertificateInformations < ActiveRecord::Migration
  def change
    create_table :certificate_informations do |t|
      t.string :course
      t.string :institute
      t.string :duration
      t.string :grade
      t.date :year
      t.integer :user_id

      t.timestamps
    end
  end
end
