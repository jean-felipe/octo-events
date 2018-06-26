# == Schema Information
#
# Table name: events
#
#  id         :bigint(8)        not null, primary key
#  action     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comment_id :integer
#  issue_id   :integer
#

require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
