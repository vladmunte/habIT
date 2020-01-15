class AddCategoryToHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :category, :string
  end
end
