# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  content         :text
#  image           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#



require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
