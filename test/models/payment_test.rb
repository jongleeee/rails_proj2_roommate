# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  name       :string
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  house_id   :integer
#  category   :string
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
