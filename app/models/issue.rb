# == Schema Information
#
# Table name: issues
#
#  id             :bigint(8)        not null, primary key
#  body           :text
#  comments       :integer
#  comments_url   :string
#  events_url     :string
#  html_url       :string
#  labels_url     :string
#  number         :integer
#  repository_url :string
#  state          :integer          default(0)
#  url            :string
#  uuid           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Issue < ApplicationRecord
  has_many :events
end
