class RemoveEndcheckFromSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :endcheck, :boolean
  end
end
