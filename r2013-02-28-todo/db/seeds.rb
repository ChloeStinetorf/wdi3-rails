User.delete_all
Priority.delete_all
Task.delete_all

u1 = User.create(:name => 'Chloe', :email => 'chloe.stinetorf@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Lisa', :email => 'lisa.stinetorf@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Michael', :email => 'michael.stinetorf@gmail.com', :password => 'a', :password_confirmation => 'a')

p1 = Priority.create(:name => 'p1', :color => '#B03B50', :value => 1)
p2 = Priority.create(:name => 'p2', :color => '#B05E3B', :value => 2)
p3 = Priority.create(:name => 'p3', :color => '#C6C653', :value => 3)
p4 = Priority.create(:name => 'p4', :color => '#287326', :value => 4)
p5 = Priority.create(:name => 'p5', :color => '#6AB8CD', :value => 5)
p6 = Priority.create(:name => 'p6', :color => '#A979D2', :value => 6)
p7 = Priority.create(:name => 'p7', :color => '#D071B5', :value => 7)
p8 = Priority.create(:name => 'p8', :color => '#D1AFE4', :value => 8)
p9 = Priority.create(:name => 'p9', :color => '#2D1C54', :value => 9)
p10 = Priority.create(:name => 'p10', :color => '#212C63', :value => 10)
p11 = Priority.create(:name => 'p11', :color => '#0B1822', :value => 11)

t1 = Task.create(:title => 'laundry', :description => 'wash clothes', :due_date => '03/05/2013', :is_complete => 'f', :address => '140 7th Avenue, NYC')
t2 = Task.create(:title => 'refactoring', :description => 'make code look better', :due_date => '03/05/2013', :is_complete => 'f', :address => '10 East 21st Street, NYC')
t3 = Task.create(:title => 'coding', :description => 'write code', :due_date => '03/05/2013', :is_complete => 'f', :address => '902 Broadway, NYC')

p1.tasks << [t1]
p2.tasks << [t2]
p3.tasks << [t3]

u1.tasks = [t1, t2, t3]
u1.priorities = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11]











