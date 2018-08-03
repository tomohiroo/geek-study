# == Schema Information
#
# Table name: owners
#
#  id                     :integer          not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  description            :text
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  gender                 :integer
#  job                    :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  name                   :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  status                 :integer          default("normal"), not null
#  thumbnail              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_owners_on_email                 (email) UNIQUE
#  index_owners_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
