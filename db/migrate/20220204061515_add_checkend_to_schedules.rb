class AddCheckendToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :checkend, :boolean, default: false, null: false
  end
end
