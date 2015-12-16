# == Schema Information
#
# Table name: listings
#
#  id           :integer          not null, primary key
#  home_type    :text
#  room_type    :text
#  accommodates :integer
#  address      :text
#  user_id      :integer
#  title        :text
#  price        :integer
#  bedrooms     :integer
#  beds         :integer
#  bathrooms    :integer
#  description  :text
#  hero_picture :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Listing < ActiveRecord::Base
  belongs_to :user 
  has_many :reviews
  
  def owner?(user)
    user.id == self.user_id unless user.nil?
  end
end
