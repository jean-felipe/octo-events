# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  avatar_url :string
#  login      :string
#  type       :string
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
