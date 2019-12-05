# == Schema Information
#
# Table name: reminders
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  date        :datetime
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Reminder < ApplicationRecord
  belongs_to :user
end
