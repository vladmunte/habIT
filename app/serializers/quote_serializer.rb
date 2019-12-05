# == Schema Information
#
# Table name: quotes
#
#  id         :bigint           not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text
end
