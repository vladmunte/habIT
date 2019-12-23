# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  full_name  :string
#  avatar     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :habits
  has_many :notes
end
