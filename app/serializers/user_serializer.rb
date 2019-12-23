class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :avatar
  has_many :habits
  has_many :notes
end
