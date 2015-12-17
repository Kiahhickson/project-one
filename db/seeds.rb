#This is a user..
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

User.destroy_all

u1 = User.create(:name => "River Fairy", :email => "riverfairy@gmail.com", :password => 'password', :password_confirmation => 'password')
u2 = User.create(:name => "Evenora East", :email => "evenoraeast@gmail.com", :password => 'password', :password_confirmation => 'password')
u3 = User.create(:name => "China Girl", :email => "chinagirl@gmail.com", :password => 'password', :password_confirmation => 'password')
u4 = User.create(:name => "Theodora West", :email => "theodorawest@gmail.com", :password => 'password', :password_confirmation => 'password')
u5 = User.create(:name => "Glinda Good", :email => "glindagood@gmail.com", :password => 'password', :password_confirmation => 'password')
u6 = User.create(:name => "Oz Wizard", :email => "ozwizard@gmail.com", :password => 'password', :password_confirmation => 'password')

#This is a listing
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

Listing.destroy_all

l1 = Listing.create(:home_type => "cave", :room_type => "Entire Cave", :accommodates => 2, :address => "1 Cave Place, Enchanted Forest", :title => "Intimate moss cave wth waterfall entrance", :price => 150, :bedrooms => 1, :beds => 1, :bathrooms => 1, :description => "The Enchanted Forest", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450156699/Screen_Shot_2015-12-15_at_4.02.48_pm_ul7kuk.png")

l2 = Listing.create(:home_type => "Castle", :room_type => "Private Room", :accommodates => 2, :address => "Main Castle, Emerald City", :title => "Sleep amongst gold in the King's Vault", :price => 1000, :bedrooms => 1, :beds => 1, :bathrooms => 1, :description => "Emerald City", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450156698/Screen_Shot_2015-12-15_at_4.06.05_pm_dad3ss.png")

l3 = Listing.create(:home_type => "Townhouse", :room_type => "Entire Home", :accommodates => 4, :address => "10 China Lane, China Town", :title => "Intimate townhouse with open plan living", :price => 200, :bedrooms => 2, :beds => 2, :bathrooms => 1, :description => "China Town", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450153937/Screen_Shot_2015-12-14_at_8.12.25_pm_awupdq.png")

l4 = Listing.create(:home_type => "Crypt", :room_type => "Entire Crypt", :accommodates => 6, :address => "666 Grave Yard Way, The Dark Forest", :title => "Sleep amongst the dead in this mysterious dwelling", :price => 400, :bedrooms => 1, :beds => 1, :bathrooms => 1, :description => "The Dark Forest", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450156694/Screen_Shot_2015-12-15_at_3.57.24_pm_e9704z.png")

l5 = Listing.create(:home_type => "Apartment", :room_type => "Private Room", :accommodates => 1, :address => "4 Munchkin Crescent, The Land of Oz", :title => "Enjoy the community spirit in this traditional city", :price => 500, :bedrooms => 1, :beds => 1, :bathrooms => 1, :description => "The Land of Oz", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450153938/Screen_Shot_2015-12-14_at_7.51.44_pm_ymaapa.png")

l6 = Listing.create(:home_type => "Field", :room_type => "Entire Field", :accommodates => 1, :address => "The Poppy Fields, Outer Emerald City", :title => "Sleep in peace and quiet amongst the poppies", :price => 0, :bedrooms => 0, :beds => 0, :bathrooms => 0, :description => "The Poppy Fields", :hero_picture => "http://res.cloudinary.com/div0moogk/image/upload/v1450156946/Screen_Shot_2015-12-15_at_4.07.34_pm_hk2d0m.png")


#This is a review
#  id          :integer          not null, primary key
#  user_id     :integer
#  listing_id  :integer
#  user_review :text
#  rating      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

Review.destroy_all

r1 = Review.create(:user_id => "", :user_review => "The Enchanted Forest was a magical display. The cave has a comfortable covering of moss and endless supply of free flowing water", :rating => "6")
r2 = Review.create(:user_id => "", :user_review => "Staying in The Emerald City was extremely oppulent and luxurious. The King's Vault did not dissapoint. Don't fuss about the cost as the abundance of golden treasures will pay for the stay, however we did have to kill the Wicked Witch.", :rating => "10")
r3 = Review.create(:user_id => "", :user_review => "China Town had recently experienced an invasion so our stay was quite unsettled. The townhouse had major damage and a brisk draught come through", :rating => "2")
r4 = Review.create(:user_id => "", :user_review => "The Dark Forest was quite scary to get too however, the Crypt provided a comfortable shelter for the night. It was quite dark and cold", :rating => "4")
r5 = Review.create(:user_id => "", :user_review => "An amazing magical entrance to the Land of Oz. The apartment was extremely comfortable and the community was so friendly", :rating => "10")
r6 = Review.create(:user_id => "", :user_review => "The Poppy Field was a great place to have an afternoon nap. The poppies provided instant relief and I awoke feeling refreshed", :rating => "7")

#_________________________________________________

# class User < ActiveRecord::Base
#   has_many :listings
#   has_many :reviews

puts "Associating users and listings"
u1.listings << l1
u2.listings << l2
u3.listings << l3
u4.listings << l4
u5.listings << l5
u6.listings << l6

puts "Associating users and reviews"
u1.reviews << r1
u2.reviews << r2
u3.reviews << r3
u4.reviews << r4
u5.reviews << r5
u6.reviews << r6

puts "Associating listings and reviews"
l1.reviews << r1
l2.reviews << r2
l3.reviews << r3
l4.reviews << r4
l5.reviews << r5
l6.reviews << r6


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
