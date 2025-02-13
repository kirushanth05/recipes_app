import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';
import 'package:recipe_app/models/food_category.dart';

final List<FoodCategory> foodCategories = [
  FoodCategory(
    id: 'Cid001',
    title: 'Chinese',
    color: Colors.amber.shade400,
    availableRecipe: [
      Food(
        name: 'Noodles',
        procedure: ['Boil water', 'Boil noodles', 'Add sauce', 'Serve hot'],
        imageUrl:
            'https://bebraveandbloom.com/wp-content/uploads/2022/04/chinese-lo-mein-noodles-recipe-tasty-1.jpg',
        description:
            'Noodles are a staple food in many cultures made from unleavened dough that is stretched, extruded, or rolled flat and cut into one of a variety of shapes. A noodle is a piece of pasta, especially a ribbon-shaped one.',
      ),
      Food(
        name: 'Ramen',
        procedure: [
          'Boil water',
          'Cook ramen noodles',
          'Add broth and toppings'
        ],
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMIepz2ae9Apf9z8L0LpzrLNFT0Wcv5_nHiQ&s',
        description:
            'Ramen is a Japanese noodle soup. It consists of Chinese wheat noodles served in a meat- or fish-based broth, often flavored with soy sauce or miso, and uses toppings such as sliced pork, nori, menma, and scallions. Nearly every region in Japan has its own variation of ramen, such as the tonkotsu (pork bone broth) ramen of Kyushu and the miso ramen of Hokkaido.',
      ),
      Food(
        name: 'Pad Thai',
        procedure: [
          'Soak rice noodles',
          'Stir-fry with vegetables',
          'Add sauce'
        ],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Phat_Thai_kung_Chang_Khien_street_stall.jpg/1200px-Phat_Thai_kung_Chang_Khien_street_stall.jpg',
        description:
            'Pad Thai is a stir-fried rice noodle dish commonly served as a street food and at most restaurants in Thailand as part of the country\'s cuisine. It is typically made with rice noodles, chicken, beef or tofu, peanuts, a scrambled egg, and bean sprouts, among other vegetables. The ingredients are sautéed together in a wok and tossed in a delicious pad thai sauce made of tamarind paste, fish sauce, sugar, and vinegar.',
      ),
      Food(
          name: 'Hakka Noodles',
          procedure: ['Boil noodles', 'Stir-fry with veggies and sauce'],
          imageUrl:
              'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/07/hakka-noodles-recipe.jpg',
          description:
              'Hakka noodles is a popular Indo-Chinese dish made with noodles, vegetables, and Chinese sauces. It is a popular street food in India and is often served in restaurants and fast-food chains. The noodles are stir-fried with vegetables like bell peppers, carrots, cabbage, and spring onions, along with sauces like soy sauce, chili sauce, and vinegar. It is a quick and easy dish to make and is perfect for lunch or dinner.'),
      Food(
        name: 'Sweet and Sour Chicken',
        procedure: [
          'Fry chicken',
          'Prepare sweet and sour sauce',
          'Mix together'
        ],
        imageUrl:
            'https://www.swankyrecipes.com/wp-content/uploads/2022/05/Best-Sweet-and-Sour-Chicken.jpg',
      ),
    ],
  ),
  FoodCategory(
    id: 'Cid002',
    title: 'Italian',
    color: Colors.blue.shade400,
    availableRecipe: [
      Food(
        name: 'Pasta Carbonara',
        procedure: ['Boil pasta', 'Fry bacon', 'Mix with egg and cheese sauce'],
        imageUrl:
            'https://www.allrecipes.com/thmb/a_0W8yk_LLCtH-VPqg2uLD9I5Pk=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/11973-spaghetti-carbonara-ii-DDMFS-4x3-6edea51e421e4457ac0c3269f3be5157.jpg',
      ),
      Food(
        name: 'Margherita Pizza',
        procedure: ['Prepare dough', 'Add tomato sauce and cheese', 'Bake'],
        imageUrl:
            'https://cookieandkate.com/images/2021/07/classic-margherita-pizza.jpg',
      ),
      Food(
        name: 'Lasagna',
        procedure: ['Layer pasta, meat, and cheese', 'Bake until golden'],
        imageUrl:
            'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQQ_O_cyIiiujTofpRzt-rg0XXiaLbfZJynOoQTwnpj5U9qkGOhJ79XEm8rjeXnmxDP6Z6LZA',
      ),
      Food(
        name: 'Tiramisu',
        procedure: [
          'Prepare coffee mixture',
          'Layer with mascarpone and biscuits'
        ],
        imageUrl:
            'https://butternutbakeryblog.com/wp-content/uploads/2024/05/classic-tiramisu.jpg',
      ),
      Food(
          name: 'Bruschetta',
          procedure: ['Toast bread', 'Top with tomatoes, garlic, and basil']),
    ],
  ),
  FoodCategory(
    id: 'Cid003',
    title: 'Indian',
    color: Colors.red.shade400,
    availableRecipe: [
      Food(
          name: 'Butter Chicken',
          procedure: ['Marinate chicken', 'Cook in creamy tomato sauce']),
      Food(
          name: 'Biryani',
          procedure: ['Cook rice', 'Layer with spiced meat', 'Slow cook']),
      Food(
          name: 'Dal Tadka',
          procedure: ['Boil lentils', 'Temper with spices', 'Serve hot']),
      Food(name: 'Paneer Tikka', procedure: [
        'Marinate paneer',
        'Grill or bake',
        'Serve with chutney'
      ]),
      Food(name: 'Samosa', procedure: [
        'Prepare dough',
        'Fill with spiced potatoes',
        'Deep fry'
      ]),
    ],
  ),
  FoodCategory(
    id: 'Cid004',
    title: 'Mexican',
    color: Colors.orange.shade400,
    availableRecipe: [
      Food(
          name: 'Tacos',
          procedure: ['Prepare tortilla', 'Add filling', 'Top with salsa']),
      Food(
          name: 'Guacamole',
          procedure: ['Mash avocado', 'Mix with lime and seasoning']),
      Food(
          name: 'Churros',
          procedure: ['Make dough', 'Fry and coat with cinnamon sugar']),
      Food(
          name: 'Quesadillas',
          procedure: ['Fill tortillas with cheese', 'Grill until crispy']),
      Food(name: 'Enchiladas', procedure: [
        'Roll tortillas with filling',
        'Cover with sauce',
        'Bake'
      ]),
    ],
  ),
  FoodCategory(
    id: 'Cid005',
    title: 'American',
    color: Colors.green.shade400,
    availableRecipe: [
      Food(
          name: 'Burger',
          procedure: ['Grill patty', 'Assemble with bun and toppings']),
      Food(
          name: 'Mac and Cheese',
          procedure: ['Boil pasta', 'Mix with cheese sauce']),
      Food(
          name: 'Buffalo Wings',
          procedure: ['Fry chicken wings', 'Coat with spicy sauce']),
      Food(
          name: 'Pancakes',
          procedure: ['Mix batter', 'Cook on skillet', 'Serve with syrup']),
      Food(
          name: 'Hot Dog',
          procedure: ['Grill sausage', 'Place in bun', 'Add toppings']),
    ],
  ),
  FoodCategory(
    id: 'Cid006',
    title: 'Japanese',
    color: Colors.purple.shade400,
    availableRecipe: [
      Food(
          name: 'Sushi',
          procedure: ['Prepare sushi rice', 'Roll with nori and fillings']),
      Food(
          name: 'Ramen',
          procedure: ['Boil broth', 'Cook noodles', 'Add toppings']),
      Food(
          name: 'Tempura',
          procedure: ['Dip seafood in batter', 'Deep fry until crispy']),
      Food(
          name: 'Okonomiyaki',
          procedure: ['Mix batter', 'Cook on griddle', 'Top with sauce']),
      Food(name: 'Onigiri', procedure: [
        'Shape rice into triangles',
        'Wrap with nori',
        'Add filling'
      ]),
    ],
  ),
  FoodCategory(
    id: 'Cid007',
    title: 'French',
    color: Colors.pink.shade400,
    availableRecipe: [
      Food(
          name: 'Croissant',
          procedure: ['Prepare dough', 'Fold with butter', 'Bake']),
      Food(
          name: 'Ratatouille',
          procedure: ['Chop vegetables', 'Layer in dish', 'Bake with sauce']),
      Food(
          name: 'French Onion Soup',
          procedure: ['Caramelize onions', 'Add broth', 'Top with cheese']),
      Food(
          name: 'Coq au Vin',
          procedure: ['Marinate chicken', 'Cook with wine and mushrooms']),
      Food(
          name: 'Quiche Lorraine',
          procedure: ['Prepare pastry', 'Fill with egg and bacon', 'Bake']),
    ],
  ),
  FoodCategory(
    id: 'Cid008',
    title: 'Thai',
    color: Colors.teal.shade400,
    availableRecipe: [
      Food(name: 'Pad Thai', procedure: [
        'Soak rice noodles',
        'Stir-fry with vegetables',
        'Add sauce'
      ]),
      Food(
          name: 'Tom Yum Soup',
          procedure: ['Boil broth', 'Add shrimp, lemongrass, and chili']),
      Food(
          name: 'Green Curry',
          procedure: ['Simmer coconut milk', 'Add chicken and vegetables']),
      Food(
          name: 'Mango Sticky Rice',
          procedure: ['Cook sticky rice', 'Serve with mango and coconut milk']),
      Food(
          name: 'Som Tam (Papaya Salad)',
          procedure: ['Shred green papaya', 'Toss with chili and lime']),
    ],
  ),
  FoodCategory(
    id: 'Cid009',
    title: 'Mediterranean',
    color: Colors.cyan.shade400,
    availableRecipe: [
      Food(name: 'Hummus', procedure: ['Blend chickpeas, tahini, and garlic']),
      Food(
          name: 'Falafel',
          procedure: ['Blend chickpeas', 'Shape into balls', 'Deep fry']),
      Food(
          name: 'Greek Salad',
          procedure: ['Chop vegetables', 'Toss with feta and olives']),
      Food(
          name: 'Shakshuka',
          procedure: ['Cook tomatoes with spices', 'Poach eggs in sauce']),
      Food(
          name: 'Baklava',
          procedure: ['Layer phyllo dough with nuts', 'Drizzle with honey']),
    ],
  ),
  FoodCategory(
    id: 'Cid010',
    title: 'Spanish',
    color: Colors.deepOrange.shade400,
    availableRecipe: [
      Food(
          name: 'Paella',
          procedure: ['Cook rice with saffron', 'Add seafood and chicken']),
      Food(
          name: 'Gazpacho',
          procedure: ['Blend tomatoes and peppers', 'Serve chilled']),
      Food(
          name: 'Churros',
          procedure: ['Make dough', 'Fry and coat with cinnamon sugar']),
      Food(
          name: 'Tortilla Española',
          procedure: ['Slice potatoes', 'Cook with eggs in a pan']),
      Food(
          name: 'Patatas Bravas',
          procedure: ['Fry potatoes', 'Top with spicy tomato sauce']),
    ],
  ),
];