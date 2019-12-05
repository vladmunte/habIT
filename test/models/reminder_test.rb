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

require 'test_helper'

class ReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
