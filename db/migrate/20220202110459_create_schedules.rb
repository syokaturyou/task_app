class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.boolean :endcheck
      t.string :schedulememo

      t.timestamps
    end
  end
end
