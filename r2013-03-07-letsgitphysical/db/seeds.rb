User.delete_all
Exercise.delete_all

u1 = User.create(:name => 'Chloe', :email => 'chloe@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Teddy', :email => 'teddy@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Philip', :email => 'philip@gmail.com', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:name => 'Arielle', :email => 'arielle@gmail.com', :password => 'a', :password_confirmation => 'a')
u5 = User.create(:name => 'Michele', :email => 'michele@gmail.com', :password => 'a', :password_confirmation => 'a')
u6 = User.create(:name => 'Emily', :email => 'emily@gmail.com', :password => 'a', :password_confirmation => 'a')

e1 = Exercise.create(:activity => 'running', :value => '6', :unit => 'miles', :completed => '2013-03-07')
e2 = Exercise.create(:activity => 'running', :value => '8', :unit => 'miles', :completed => '2013-03-09')
e3 = Exercise.create(:activity => 'running', :value => '7', :unit => 'miles', :completed => '2013-03-10')
e4 = Exercise.create(:activity => 'running', :value => '4', :unit => 'miles', :completed => '2013-03-12')
e5 = Exercise.create(:activity => 'running', :value => '9', :unit => 'miles', :completed => '2013-03-18')
e6 = Exercise.create(:activity => 'running', :value => '12', :unit => 'miles', :completed => '2013-03-22')
e7 = Exercise.create(:activity => 'running', :value => '15', :unit => 'miles', :completed => '2013-03-27')

u1.exercises = [e1, e2, e3, e4, e5, e6, e7]