# == Schema Information
#
# Table name: listings
#
#  id           :integer          not null, primary key
#  home_type    :text
#  room_type    :text
#  accommodates :integer
#  address      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Listing < ActiveRecord::Base
  belongs_to :user 
  has_many :reviews
  
end
