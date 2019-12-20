class AddDaysGoalToHabit < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :days_goal, :integer
  end
end
