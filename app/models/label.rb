# == Schema Information
#
# Table name: labels
#
#  id         :bigint(8)        not null, primary key
#  color      :string
#  default    :boolean
#  name       :string
#  url        :string
#  uuid       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  node_id    :string
#

class Label < ApplicationRecord
end
