User.delete_all
Stock.delete_all

u1 = User.create(:name => 'Chloe', :email => 'chloe@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 50000)
u2 = User.create(:name => 'Teddy', :email => 'teddy@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 75000)
u3 = User.create(:name => 'Philip', :email => 'philip@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 100000)
u4 = User.create(:name => 'Arielle', :email => 'arielle@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 25000)
u5 = User.create(:name => 'Michele', :email => 'michele@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 50000)
u6 = User.create(:name => 'Emily', :email => 'emily@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 10000)

s1 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 800)
s2 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 150)
s3 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 75)
s4 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 30)
s5 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 175)
s6 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 45)

s7 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 400)
s8 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 50)
s9 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 175)
s10 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 230)
s11 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 75)
s12 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 65)

s13 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 90)
s14 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 50)
s15 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 375)
s16 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 130)
s17 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 75)
s18 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 245)

s19 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 50)
s20 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 50)
s21 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 375)
s22 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 130)
s23 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 45)
s24 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 25)

s25 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 80)
s26 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 50)
s27 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 275)
s28 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 90)
s29 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 25)
s30 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 145)

s31 = Stock.create(:symbol => 'GOOG', :shareprice => Stock.quote('GOOG'), :shares => 50)
s32 = Stock.create(:symbol => 'AMZN', :shareprice => Stock.quote('AMZN'), :shares => 250)
s33 = Stock.create(:symbol => 'AAPL', :shareprice => Stock.quote('AAPL'), :shares => 165)
s34 = Stock.create(:symbol => 'BAC', :shareprice => Stock.quote('BAC'), :shares => 30)
s35 = Stock.create(:symbol => 'GRPN', :shareprice => Stock.quote('GRPN'), :shares => 95)
s36 = Stock.create(:symbol => 'FB', :shareprice => Stock.quote('FB'), :shares => 165)

u1.stocks = [s1, s2, s3, s4, s5, s6]
u2.stocks = [s7, s8, s9, s10, s11, s12]
u3.stocks = [s13, s14, s15, s16, s17, s18]
u4.stocks = [s19, s20, s21, s22, s23, s24]
u5.stocks = [s25, s26, s27, s28, s29, s30]
u6.stocks = [s31, s32, s33, s34, s35, s36]








