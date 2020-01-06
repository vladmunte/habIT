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

  def habit_progress
    return 1 if 100*object.days_checked/object.days_goal < 1
    return 100*object.days_checked/object.days_goal
  end
end
