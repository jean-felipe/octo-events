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

require 'rails_helper'

RSpec.describe Label, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
