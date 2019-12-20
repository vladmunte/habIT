# == Schema Information
#
# Table name: habits
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class HabitSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :days_goal, :days_checked
  attribute :habit_progress
  belongs_to :user

  def habit_progress
    inding.pry
    return (100*days_checked)/days_goal
  end
end
