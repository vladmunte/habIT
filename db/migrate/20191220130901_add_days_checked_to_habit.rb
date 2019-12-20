class AddDaysCheckedToHabit < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :days_checked, :integer, default: 1
  end
end
