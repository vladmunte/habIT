class User < ApplicationRecord
  has_many :habits
  has_many :reminders
  has_many :notes
end
