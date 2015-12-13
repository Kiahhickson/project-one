#This is a user..
#  id              :integer          not null, primary key
#  first_name      :text
#  last_name       :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

User.destroy_all

u1 = User.create(:first_name => "Kiah", :last_name => "Hickson", :email => "kiah@gmail.com", :password_digest => 'chicken' )
u2 = User.create(:first_name => "Leah", :last_name => "Hickson", :email => "Leah@gmail.com", :password_digest => 'chicken' )



#This is a listing
# home_type   :text
#  room_type   :text
#  accommodates :integer
#  address        :text
Listing.destroy_all

l1 = Listing.create(:home_type => "Apartment", :room_type => "Private Room", :accommodates => 4, :address => "Paddington, NSW")
l2 = Listing.create(:home_type => "House", :room_type => "Entire House", :accommodates => 6, :address => "Balmain, NSW")

#This is a review
