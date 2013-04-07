User.delete_all

u1 = User.create(:name => 'Chloe', :password => 'a', :password_confirmation => 'a', :image => 'https://twimg0-a.akamaihd.net/profile_images/2816956180/d7d8975290a8af60dc8e311f86d52ac6.png', :bio => 'web developer', :address => 'New York, NY')
u2 = User.create(:name => 'Leanne', :password => 'a', :password_confirmation => 'a', :image => 'http://media-cache-ec0.pinterest.com/avatars/lvanderbyl-61_600.jpg', :bio => 'designer', :address => 'San Francisco, CA')
u3 = User.create(:name => 'Alissa', :password => 'a', :password_confirmation => 'a', :image => 'http://theisisclub.org/images/bio_alissa.jpg', :bio => 'consultant', :address => 'Philadelphia, PA')
u4 = User.create(:name => 'Katherine', :password => 'a', :password_confirmation => 'a', :image => 'http://psychiatry.northwestern.edu/wp-content/uploads/2012/11/BACKES-MD-KATHERINE1.jpg1.jpg', :bio => 'doctor', :address => 'Columbus, OH')
u5 = User.create(:name => 'Sarah', :password => 'a', :password_confirmation => 'a', :image => 'http://farm6.staticflickr.com/5145/5552300986_3d6b5609dc_m.jpg', :bio => 'architect', :address => 'San Francisco, CA')
u5 = User.create(:name => 'Alice', :password => 'a', :password_confirmation => 'a', :image => 'http://photos.capturearkansas.com/photos/pSl3IyUIgSZQeFatcCB0kA/med.jpg', :bio => 'writer', :address => 'Bethel, OH')

#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  image           :text
#  bio             :text
#  address         :text
#  latitude        :float            default(0.0)
#  longitude       :float            default(0.0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

