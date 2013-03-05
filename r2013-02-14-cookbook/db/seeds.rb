Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Chez Panisse Cafe Cookbook', :cuisine => 'American', :chef => 'Alice Waters', :image => 'http://images.indiebound.com/832/175/9780060175832.jpg')

r1 = Recipe.create(:name => 'Tomato Soup', :course => 'first', :cooktime => '20', :servingsize => '4', :instructions => 'Clean tomatoes. Blend Tomatoes. Cook on stovetop.', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs6FbBPIklqQh8n0LbWbT6bCfNojH5wyWBvyCH89WsDInMS8A5kQ')
r2 = Recipe.create(:name => 'Macaroni and Cheese', :course => 'second', :cooktime => '45', :servingsize => '8', :instructions => 'Boil pasta, then add cheese. Bake at 450 degrees in glass pan.', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOKH8JRMBXXVZy-YpJTqsl1k5T0VbtHuiMrp0E9kmXHIynmQx')
r3 = Recipe.create(:name => 'Yellow Cake', :course => 'dessert', :cooktime => '60', :servingsize => '12', :instructions => 'Beat eggs, flour, sugar and milk. Pour into bundt pan, bake at 350 degrees. Frost cake when cool.', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTO3meVJr5fNNk805nqrpyjoanqVfhs-c_ePgE1HVDq6gJDoZCXKw')

i1 = Ingredient.create(:name => 'Flour', :measurements => '3 cups', :cost => '4.99', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSXBGQ1gQOOS_EnkjOqyKbSottQ5HgnCRS4p622qxa6IfhPXa7y')
i2 = Ingredient.create(:name => 'Sugar', :measurements => '4 tbsp', :cost => '3.99', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQHSdFOnD0l9ik6VNua02wyrzouCkMw6Lc4WFOuu_P37aMenuZZ')
i3 = Ingredient.create(:name => 'Milk', :measurements => '2 cups', :cost => '3.25', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTMPk3uc8up2FDZY_aaAB2fo0sxrmYaAKOU9JPQlcvxB2D-MZPXRQ')
i4 = Ingredient.create(:name => 'Cheese', :measurements => '1 cup', :cost => '6.50', :image => 'http://cheesegoblin.com/Uploads/CheeseGoblinUploads/ImageUpload/Cheese_205.jpg')
i5 = Ingredient.create(:name => 'Tomato', :measurements => '1 whole', :cost => '1.75', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSR7s81DPKB15yL7zOkviDmeBMPF_G1MW8es5sgwvyyeoPQ7qsJnw')
i6 = Ingredient.create(:name => 'Butter', :measurements => '2 tbsp', :cost => '2.99', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQXhGQygCoY_3kh33Ap2gTLi3xGZvdkfFozfOx2Vz8splgmGQom')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i3, i5, i6]
r2.ingredients = [i1, i3, i4, i6]
r3.ingredients = [i1, i2, i3, i6]