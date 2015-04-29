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

class Payment < ActiveRecord::Base
  validates :name, presence: true
  validates :amount, presence: true
  validates :house_id, presence: true
  validates :category, presence: true

  belongs_to :house
end
