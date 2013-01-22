class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.string :subject
      t.integer :message_from
      t.integer :message_to

      t.timestamps
    end
  end
end
