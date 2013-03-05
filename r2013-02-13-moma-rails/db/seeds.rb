
Artist.delete_all
Painting.delete_all

Artist.create(:name => 'Edward Ruscha', :nationality => 'American', :dob => '1937/12/16', :movement => 'Pop', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS72dpTYEOWvsAgL6VWBAAip4H0ZRKuizIvBnIUmHpjxpMlrguKgA')
Artist.create(:name => 'Gerhard Richter', :nationality => 'German', :dob => '1932/2/9', :movement => 'Photorealism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Gerhard_richter_02_2005_d%C3%BCsseldorf.jpg/220px-Gerhard_richter_02_2005_d%C3%BCsseldorf.jpg')
Artist.create(:name => 'Wayne Thiebaud', :nationality => 'American', :dob => '1920/11/15', :movement => 'Pop', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQPASizQBmsUi-dEtQpyM81FHVccBeFCbhIt5_3p-GYc_GuvF9R2w')
Artist.create(:name => 'Joseph Beuys', :nationality => 'German', :dob => '1921/5/12', :movement => 'Fluxus', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRdyZv3LPrTpeAtCAAq3MIpUoVj6lMWXUYA_vcIXCbuOa_787p35Q')
Artist.create(:name => 'Vija Celmins', :nationality => 'Latvian', :dob => '1938/10/25', :movement => 'Abstract-Realism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Portrait_of_Vija_Celmins_ca._1975_by_Mimi_Jacobs%2C_Smithsonian_Archives_of_American_Art.jpg/220px-Portrait_of_Vija_Celmins_ca._1975_by_Mimi_Jacobs%2C_Smithsonian_Archives_of_American_Art.jpg')

Painting.create(:title => 'Standard Station', :year => 1966, :medium => 'screenprint', :style => 'Pop', :image => 'http://www.lacma.org/sites/default/files/styles/Exhibition_Main/public/image/RuschaMain.jpg')
Painting.create(:title => 'Sled', :year => 1969, :medium => 'Mixed Media', :style => 'Conceptual', :image => 'http://farm4.static.flickr.com/3567/3772841623_9b74370b2a.jpg')
Painting.create(:title => 'Cut Meringues', :year => 1961, :medium => 'oil', :style => 'Pop', :image => 'http://www.moma.org/collection_images/resized/117/w500h420/CRI_159117.jpg')
Painting.create(:title => 'Display Cakes', :year => 1963, :medium => 'oil', :style => 'Pop', :image => 'http://www.sfmoma.org/images/artwork/medium/73.52_01_d02.jpg')
Painting.create(:title => 'Helen', :year => 1963, :medium => 'oil', :style => 'Abstract', :image => 'http://www.moma.org/collection_images/resized/955/w500h420/CRI_150955.jpg')