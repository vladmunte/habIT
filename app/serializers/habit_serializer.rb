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
  attributes :id, :title, :description
  belongs_to :user
end
