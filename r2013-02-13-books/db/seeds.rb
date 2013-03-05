Author.delete_all
Book.delete_all

Author.create(:name => 'John Irving', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/John_Irving_at_Cologne_2010_%287108%29.jpg/220px-John_Irving_at_Cologne_2010_%287108%29.jpg', :genre => 'fiction')
Author.create(:name => 'Philip Roth', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSi3Pl0DCBF-9DMv8C-OT2otVM6cMss6mPWI6t8OekSP-U0DO0d', :genre => 'fiction')
Author.create(:name => 'Bernard Malamud', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh_Y-Qi6HXXnCdFkdeUcHQ8HtQhBatSRWEFzIFbvGcvazc9VR-EsWQqpdv', :genre => 'short stories')
Author.create(:name => 'Joan Didion', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Joan_Didion_at_the_Brooklyn_Book_Festival.jpg/232px-Joan_Didion_at_the_Brooklyn_Book_Festival.jpg', :genre => 'literary journalism')

Book.create(:title => 'Slouching Towards Bethlehem', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/d/d5/SlouchingTowardsBethlehem.jpg/200px-SlouchingTowardsBethlehem.jpg', :year => 1968)
Book.create(:title => 'The Cider House Rules', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/a/a6/CiderHouseRules.jpg/200px-CiderHouseRules.jpg', :year => 1985)
Book.create(:title => 'A Widow for One Year', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Widow_for_1yr.jpg/200px-Widow_for_1yr.jpg', :year => 1998)
Book.create(:title => 'American Pastoral', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/3/39/AmericanPastoral.jpg/200px-AmericanPastoral.jpg', :year => 1997)