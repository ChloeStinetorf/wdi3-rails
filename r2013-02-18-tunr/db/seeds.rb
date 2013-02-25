Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Top 40')
g2 = Genre.create(:name => 'Pop')
g3 = Genre.create(:name => 'Folk')
g4 = Genre.create(:name => 'Bluegrass')
g5 = Genre.create(:name => 'Country')
g6 = Genre.create(:name => 'Rock')

s1 = Song.create(:name => 'Thriller', :filename => 'thriller.mp3', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSZWoKXBFIhKLhDZR2gR7yoir8siYmkrnQX1mBJLkIEldqjPDzjTA')
s2 = Song.create(:name => 'Billie Jean', :filename => 'billiejean.mp3', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTF_OVWd_I9GcBgXoxHE6Uq_mSZp6KwqA2Ec_P8kfWBivw__kXL2Q')
s3 = Song.create(:name => 'Smells Like Teen Spirit', :filename => 'smellsliketeenspirit.mp3', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTHReCNR-7iqpifgGk1cWa2ZRWRj1Hf07NhzaM5_JUyMALwqX4s')
s4 = Song.create(:name => 'Wide Awake', :filename => 'wideawake.mp3', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS7y7rXqJ4o_gopczVDG5JKo8gcZGsuKu2z6K9pAuNC0O9zpB-keA')
s5 = Song.create(:name => 'Firework', :filename => 'firework.mp3', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS7J6sADYWgSOAipWjyRbs88bwHpsk_ne_S8bFJfn7hFomUPFvu')
s6 = Song.create(:name => 'Last Friday Night', :filename => 'lastfridaynight.mp3', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRNt4oXH7x0PnqlMbTSAyZQvnekZus79Sxn36B8A-IsGvx2tSeU')

a1 = Album.create(:name => 'Thriller', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz8TgthvxgLews-xNekn4lgDaKI8HoDaxV-ST7HY6MsF7I9xlphg')
a2 = Album.create(:name => 'Nevermind', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRHbSbXcbyO7971NA3_1OkzhqnLOrwbbCs8KZmqf4DAiFoARCRl')
a3 = Album.create(:name => 'The White Album', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTMMUAYgKsnzQrD49Y9T7-4P_NHQwlXrzdU74zXHbK0_p64fAE6')
a4 = Album.create(:name => 'Let it Be', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQu6bLBrlGV6m_RsUuZYKKNJOfxZ1my7lpNmq0Q8B9Sw_h31WvkjA')
a5 = Album.create(:name => 'Magical Mystery Tour', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT6gUS7f7Xw1jQxOrdLd2TRFoc_qVFIg47lWfrbkzOCUd4bmo-tQw')
a6 = Album.create(:name => 'Yellow Submarine', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQNMO3DbxEIedZ4HeIYJY7rBiuPctDt3iKMlcDw6D6JbIrqHGwh')
a7 = Album.create(:name => 'Forget About It', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRKSAxHojENTuy-5hs7iV4Yeha7pPADU0JFw7p1qBI8BvIdacdF')
a8 = Album.create(:name => 'Lonely Runs Both Ways', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-O13_l9hiJPOEFm2FjR_wu9z7kd-3b9V0fGoPx5s2HCsaaJY4')
a9 = Album.create(:name => 'Raising Sand', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAiNsFp5l9Ud6kNAc6kLCsZpMYGUj3wO-YOIPiM-FvMOi3exKXjQ')
a10 = Album.create(:name => 'The Essential Johnny Cash', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSTwrDTaW5xObDIcgME93afQ5ERlwx6cNWyps0uiBCQ4esZE-7FGA')
a11 = Album.create(:name => 'The Legend of Johnny Cash', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRbyT75CTZQ3PYcmSFJyXGRlV22GeMoNVD_IPv3ZqAMtzG3_xocrw')
a12 = Album.create(:name => 'One of the Boys', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzrDTeWJ4MAPt9VSKQgJPQX9OzXG6GaZfsxeFiVvecp07LWHwX')
a13 = Album.create(:name => 'Teenage Dream', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSRjUyZYlsJN5LMOBTohezDUbPwKJJsaLaDD7ASPuc9p669LKh8')
a14 = Album.create(:name => 'Fearless', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS1-lexzzOHxN3XQyd-j0pIEfSq7D2n7yQyplYTngZwSVqn18_F4A')
a15 = Album.create(:name => 'Circus', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRaDgGaRYF97dlrEWBNq_DApwuTCv01wRjDNYERy2o50Wwi0xu7dQ')

r1 = Artist.create(:name => 'Michael Jackson', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSBNZGiK_7wnhGk1s4D0q65wvYrGitJhFHL6rUPQAYkXF5wj6KhYQ')
r2 = Artist.create(:name => 'Nirvana', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQnsABveqZfEpyA8BE0ZT_LS10UFuTqhMqZRCi6JzYLSYyEE2bD2g')
r3 = Artist.create(:name => 'Beatles', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj1no-xFPBKGdKmidSPvi7Ybvoly2wYwjSqWeDsje83vWaMgLX2w')
r4 = Artist.create(:name => 'Katy Perry', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSj9lZrB99l4YPxG2A0dd3xzk7MgS8GzQGBBKDBe-Ejs06Phd62yA')
r5 = Artist.create(:name => 'Alison Krauss', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRVteQnzCnRNNX2CX9ayOF82HuD6sWAifQbwHS_y7EpjB-oVmTEWg')
r6 = Artist.create(:name => 'Johnny Cash', :image => 'http://www.biography.com/imported/images/Biography/Images/Galleries/Johnny%20Cash/johnny-cash-thumb.jpg')
r7 = Artist.create(:name => 'Britney Spears', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSbSBuCL87XXwvATXnQeiRrSYQoegzeLVXWT3l_vaB3OuMT2SUPBg')

u1 = User.create(:name => 'Wendy', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpIwIP9mEtUuLzXkaogxHOC0hXeMzCBo6MbaoCi2sC0OHSXalT', :password => 'a', :password_confirmation => 'a', :balance => '100')
u2 = User.create(:name => 'Ronald', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSfnm1-StCiSdu8j0caKhdhS5da_6x_aqA9IWVSX8G7TAhnz4wO', :password => 'a', :password_confirmation => 'a', :balance => '500')
u3 = User.create(:name => 'Barack', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQhYA85yoraa42n-ld78JaC1NbWFl2wxJozrstvsQBJb2aMnBnkcQ', :password => 'a', :password_confirmation => 'a', :is_admin => 'true', :balance => '900')

m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

r1.songs << s1 << s2
r2.songs = [s3]
r4.songs = [s4, s5, s6]

r1.albums << a1
r2.albums << a2
r3.albums = [a3, a4, a5, a6]
r4.albums = [a12, a13]
r5.albums = [a7, a8, a9]
r6.albums = [a10, a11]
r7.albums << [a15]

a1.songs = [s1, s2]
a2.songs << s3
a13.songs = [s4, s5, s6]

g1.songs = [s1, s2]
g2.songs = [s4, s5, s6]
g6.songs << s3

u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]

u1.albums = [a1, a2]






