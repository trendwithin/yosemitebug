# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  Menu.create([{ item: 'Eggs and Bacon'}, { description: 'Egss any style with thick cut bacon'},
#                     { price: '$6.98' }, {meal: 'breakfast'}], :as => :admin)
# Menu.create(item: 'Eggs', description: 'Any Style', price: '$5.00', meal: 'breakfast')
Menu.create([item: 'California', description: 'Eggs, Wheat Toast, Fresh Tomato & Avocado, <br> * Tofu may be subsitutude for Eggs.',
             price: '$7.00', meal: 'breakfast'])

Menu.create([item: 'American', description: 'Eggs, Bacon or Ham, Hashbrowns & Wheat Toast. * Tofu may be subsitutude for Eggs.',
             price: '$7.50', meal: 'breakfast'])

Menu.create([item: 'Continental', description: 'Eggs, Wheat Toast, and Apple or Orange Juice',
              price: '$6.00', meal: 'breakfast'])

Menu.create([item: 'Scramble', description: 'Ham and Cheese or Veggie and Cheese, Hashbrowns or Wheat Toast',
              price: '$9.00', meal: 'breakfast'])

Menu.create([item: 'Breakfast Burrito', description: 'Scrambled Egg, Black Beans, Veggies, Chipotle Sour Cream, Salsa Fesca, Avocado, & HashBrowns',
            price: '$8.00', meal: 'breakfast'])

Menu.create([item: 'Buckwheat Pancake', description: 'A huge Pancake on a platter served with Fruit Salad.  Blueberry for $1 more',
              price: '$6.50', meal: 'breakfast'])

Menu.create([item: 'French Toast', description: 'French Toast served with Fresh Cut Fruit',
              price: '$6.50', meal: 'breakfast'])

Menu.create([item: 'Muesli', description: 'A bowl of quality Muesli or Hot Oatmeal with Soy, Whole Milk or Yogure, and a bowl of Fruit Salad',
             price: '$6.50', meal: 'breakfast'])

Menu.create([item: 'Quesadilla', description: 'Black Bean Quesadilla with Salsa Fresca & Sour Cream. add Chicken-- $2',
             price: '$6.00', meal: 'lunch'])
Menu.create([item: 'Veggie Wrap', description: 'Veggie Spinach Wrap with Hummus, Tomatoes, Lettuce, Peppers, Pickles, Avocado, Onion & Cucumber',
             price: '$8.00', meal: 'lunch'])
Menu.create([item: 'Grilled Cheese', description: 'Triple Decker Grilled Cheese with Cheddar, Swiss, Provolone, Pesto, Tomato, Spinach, & Onion',
             price: '$8.00'])
Menu.create([item: 'Vietnamese Salad', description: 'Cabbage, Bell Pepper, Fresh Herbs, Peanuts, Lime & Fish Sauce. Add Chicken-- $3',
             price: '$8.00', meal: 'lunch'])
Menu.create([item: 'Greek Salad', description: 'With Pita, Lettuce, Feta, Kalamata, Tomato, Cucumber, Onion, Pepperoncini',
             price: '$8.00, $11 in a Pita Sandwich with Chicken', meal: 'lunch'])
Menu.create([item: 'Turkey Cobb Salad', description: 'With Avocado, Blue Cheese, Egg, Tomato, Onion & Honey Mustard Vinaigrette',
             price: '$11.00', meal: 'lunch'])
Menu.create([item: 'Buger', description: 'Local Grass Fed Burger with standard fixings',
             price: '$11.00', meal: 'lunch'])
Menu.create([item: 'Sandwich', description: 'Same Ingredients as To Go Available', price: '$7.00', item: 'lunch'])
Menu.create([item: 'To Go Sandwich', description: 'Order during breakfast for packed trail lunches.  Ingredients are packed separately for assembly during the activities of the day.
             Choose from: Provolone, Swiss, and Avocado-- Roast Beef and Cheddar-- Hummus, Provolone, and Avocado-- Turkey and Provolone-- Ham and Swiss-- BLT.  Wheat-Nut Bread, Lettuce, Tomato, Onion, Pickles, Condiments, and an Apple.
             Also includes quality trail mix and cookies.', price: '$7.00', meal: 'lunch'])


Menu.create([item: 'Beef', description: 'Grilled Ribeye with Bacon-Jalepeno Jam, Demiglaze, Mashed Potatoes and Asparagus. <br> Skirt Steak Teriyaki with Rice and Housemade Pickeled Vegetables. <br>New York Strip Steak with Blue Cheese and Roasted Garlic Compound Butter, au Gratin Potatoes and Brussel Sprouts', price: '$18.00+', meal: 'dinner'])
Menu.create([item: 'Fish', description: 'Grilled Salmon with Sweet Corn Qunioa Pistour, Butternut Puree, Kale Salad with Housemade Sprouted Lentils.<br>
             Trout with Brown Butter, Almonds, Barley Pilaf and Sauteed Spinach. <br> Blackened Cajun Catfish with Red Beans and Rice with Collard Greens.',
             price: '$15.00+', meal: 'dinner'])
Menu.create([item: 'Chicken', description: '-Boneless yogurt marinated half chicken with panzanilla salad and kale salad.
             <br>Coq au Vin with mashed potatoes and sauteed spinach.
             <br>Chicken cacciatore with polenta.',
             price: '$12.00+', meal: 'dinner'])
Menu.create([item: 'Pork', description: '-Country fried bone-in pork chop with apple apricot sauce, braised cabbage and mashed potatoes.
            <br> Braised pork with mole, black beans, cabbage salad and tortillas.
            <br>Pecan crusted pork loin with savory bread pudding and brussel sprouts.',
            price: '$14.00+', meal: 'dinner'])
Menu.create([item: 'Vegan/Vegetarian', description: 'Mediteranean Plate with lemon lentils, curried onions, sauteed spinach, grilled eggplant and spiced cous cous.
             <br> North African black eyed pea and plantain stew with collard greens.
             <br>Pasta with melted leeks, roasted garlic, white beans, goat cheese and spinach.',
             price: '$12.00+', meal: 'dinner'])
Menu.create([item: 'Hot Sandwich', description: '-Chicken quesadilla with cheddar, guacamole and coleslaw.
             <br>Brie, tomato and basil on a baguette.
             <br>Rueben with housemade corned beef and housemade saurkraut.',
             price: '$9.50', meal: 'dinner'])

Menu.create([item: 'Dessert', description: 'Real Chocolate Cake, Old Fashioned Cheesecake, Carrot Cake, and a selection of homemade pies.  Various flavors of ice cream are also available.',
             price: '$4.00+', meal: 'dessert'])

Menu.create([item: 'Premium Red & White Wine', description: '14 Hands, WA, Cabernet <br> Echelon Pinot Noir, CA <br> Francis Coppola, CA, Claret<br> Kim Crawford, NZ, Sauvignon Blanc<br> Clos Du Bois, Russian River, Chardonanay',
            price: '$4.00-$7.00', meal: 'beverage'])
Menu.create([item: 'Ales and Lagers', description: 'Trumer Pils Berkeley,<br> Brew Free or Die IPA, 21st Amendment S.F.<br> Prohibition Ale, Speakeasy S.F> <br> Seasonal Selection from Prospectors Brewerey, Mariposa CA, <br> Ace Hard Cider <br> Miller Highlife',
            price: '$2.75-$4.75'], meal: 'beverage')
Menu.create([item: 'Coffee, Tea, Juice', description: 'Coffee, Tea, Apple/Orange Juice, Soy and Whole Milk, Housemade Hibiscus Punch, Lemondae, Sports Tea, Bottled Water',
            price: '$2.00+', meal: 'beverage'])
