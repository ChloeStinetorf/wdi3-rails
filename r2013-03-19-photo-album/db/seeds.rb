Album.delete_all
Photo.delete_all

a1 = Album.create(:name => 'Knicks')
a2 = Album.create(:name => 'Celtics')
a3 = Album.create(:name => 'Lakers')
a4 = Album.create(:name => 'Thunder')

p1 = Photo.create(:name => 'Knicks', :remote_url_url => 'http://www.fastcodesign.com/multisite_files/codesign/imagecache/slideshow-large/slideshow/2012/12/1671481-slide-slide-4-the-amazing-ny-knicks-logo-that-should-have-been_1.jpg')
p2 = Photo.create(:name => 'Amare', :remote_url_url => 'http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1727.png&w=350&h=254')
p3 = Photo.create(:name => 'Carmelo', :remote_url_url => 'http://ballislife.com/wp-content/uploads/2013/01/Carmelo-Anthony.jpg')
p4 = Photo.create(:name => 'Tyson', :remote_url_url => 'http://cdn.bleacherreport.net/images_root/slides/photos/001/702/217/Tyson_Chandler_Knicks_6_display_image.png?1324403212')
p5 = Photo.create(:name => 'JR', :remote_url_url => 'http://media.northjersey.com/images/Knicks24.jpg')
p6 = Photo.create(:name => 'Jason', :remote_url_url => 'http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/429.png&w=350&h=254')

p7 = Photo.create(:name => '', :remote_url_url => '')
p8 = Photo.create(:name => '', :remote_url_url => '')
p9 = Photo.create(:name => '', :remote_url_url => '')
p10 = Photo.create(:name => '', :remote_url_url => '')
p11 = Photo.create(:name => '', :remote_url_url => '')
p12 = Photo.create(:name => '', :remote_url_url => '')

p13 = Photo.create(:name => '', :remote_url_url => '')
p14 = Photo.create(:name => '', :remote_url_url => '')
p15 = Photo.create(:name => '', :remote_url_url => '')
p16 = Photo.create(:name => '', :remote_url_url => '')
p17 = Photo.create(:name => '', :remote_url_url => '')
p18 = Photo.create(:name => '', :remote_url_url => '')

p19 = Photo.create(:name => '', :remote_url_url => '')
p20 = Photo.create(:name => '', :remote_url_url => '')
p21 = Photo.create(:name => '', :remote_url_url => '')
p22 = Photo.create(:name => '', :remote_url_url => '')
p23 = Photo.create(:name => '', :remote_url_url => '')
p24 = Photo.create(:name => '', :remote_url_url => '')

a1.photos = [p1, p2, p3, p4, p5, p6]