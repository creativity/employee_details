class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :title, :url
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :all_day, :default => false
      t.timestamps
    end
  end
end
