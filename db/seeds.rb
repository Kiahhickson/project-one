#This is a user..
#  id              :integer          not null, primary key
#  first_name      :text
#  last_name       :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

User.destroy_all

u1 = User.create(:name => "Kiah Hickson", :email => "kiah@gmail.com", :password_digest => 'chicken' )
u2 = User.create(:name => "Leah Hickson", :email => "Leah@gmail.com", :password_digest => 'chicken' )


#This is a listing
# home_type   :text
#  room_type   :text
#  accommodates :integer
#  address        :text
Listing.destroy_all

l1 = Listing.create(:home_type => "Apartment", :room_type => "Private Room", :accommodates => 4, :address => "Paddington, NSW")
l2 = Listing.create(:home_type => "House", :room_type => "Entire House", :accommodates => 6, :address => "Balmain, NSW")

#This is a review
#user_id     :integer
#  user_review :text

Review.destroy_all

r1 = Review.create(:user_id => "Kiah", :user_review => "This house was geat to stay in")
r2 = Review.create(:user_id => "Leah", :user_review => "This house was not veryy nice to stay in")

#_________________________________________________

# class User < ActiveRecord::Base
#   has_many :listings
#   has_many :reviews

puts "Associating users and listings"
u1.listings << l1
u2.listings << l2
puts "Associating users and reviews"
u1.reviews << r1
u2.reviews << r2
puts "Associating listings and reviews"
l1.reviews << r1
l2.reviews << r2

# class Listing < ActiveRecord::Base
#   belongs_to :user 
#   has_many :reviews

# l1.user << u1
# l2.user << u2
# l1.reviews << r1
# l2.reviews << r2


# class Review < ActiveRecord::Base
#   belongs_to :user
#   belongs_to :listing

# r1.user << u1
# r2.user << u2
