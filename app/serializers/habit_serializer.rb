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
    return 100*:days_checked.to_s.to_i/:days_goal.to_s.to_i
  end


end
