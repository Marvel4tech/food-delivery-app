import 'package:flutter/material.dart';
import 'package:my_app/components/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger", 
      description: 
        "A juicy beef patty with melted cheddar, lettuce, tomatoe, and a hint of onion and pickle", 
      imagePath: "lib/images/burger1.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Italian Cheeseburger", 
      description: 
        "Sweet juicy beef patty with melted cheddar, lettuce, and tomatoe", 
      imagePath: "lib/images/burger2.jpg", 
      price: 1.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Spanish Burger", 
      description: 
        "A juicy beef patty with melted cheddar, lettuce, tomatoe, and a hint of onion and pickle", 
      imagePath: "lib/images/burger3.jpg", 
      price: 2.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "York Cheeseburger", 
      description: 
        "A juicy beef patty with melted cheddar, lettuce, tomatoe, and a hint of onion and pickle", 
      imagePath: "lib/images/burger4.jpg", 
      price: 5.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Sweedish Cheeseburger", 
      description: 
        "A juicy beef patty with melted cheddar, lettuce, tomatoe, and a hint of onion and pickle", 
      imagePath: "lib/images/burger5.jpg", 
      price: 3.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // salads
    Food(
      name: "Finish Salad", 
      description: "Tasty finish salad mixed with coconut juice", 
      imagePath: "lib/images/salad1.jpg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra drink", price: 1.49),
        Addon(name: "Fendel", price: 1.09),
        Addon(name: "Coco", price: 1.09),
      ],
    ),
    Food(
      name: "Danish Salad", 
      description: "Tasty finish salad mixed with coconut juice", 
      imagePath: "lib/images/salad2.jpg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra drink", price: 1.49),
        Addon(name: "Fendel", price: 1.09),
        Addon(name: "Coco", price: 1.09),
      ],
    ),
    Food(
      name: "Irish Salad", 
      description: "Tasty finish salad mixed with coconut juice", 
      imagePath: "lib/images/salad3.jpg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra drink", price: 1.49),
        Addon(name: "Fendel", price: 1.09),
        Addon(name: "Coco", price: 1.09),
      ],
    ),
    Food(
      name: "German Salad", 
      description: "Tasty finish salad mixed with coconut juice", 
      imagePath: "lib/images/salad4.jpg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra drink", price: 1.49),
        Addon(name: "Fendel", price: 1.09),
        Addon(name: "Coco", price: 1.09),
      ],
    ),
    Food(
      name: "Newish Salad", 
      description: "Tasty finish salad mixed with coconut juice", 
      imagePath: "lib/images/salad5.jpg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra drink", price: 1.49),
        Addon(name: "Fendel", price: 1.09),
        Addon(name: "Coco", price: 1.09),
      ],
    ),

    // sides
    Food(
      name: "Crispy mac & cheese", 
      description: "Crispy cheese with alcohol ment in hot sauce", 
      imagePath: "lib/images/sides1.jpg", 
      price: 2.25, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Baton pixxs", price: 2.99),
        Addon(name: "Fruity bats", price: 2.99),
        Addon(name: "Shrueis xhss", price: 2.99),
      ]
    ),
    Food(
      name: "Fruity mac & cheese", 
      description: "Crispy cheese with alcohol ment in hot sauce", 
      imagePath: "lib/images/sides2.jpg", 
      price: 2.25, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Baton pixxs", price: 2.99),
        Addon(name: "Fruity bats", price: 2.99),
        Addon(name: "Shrueis xhss", price: 2.99),
      ]
    ),
    Food(
      name: "Milky cheese", 
      description: "Crispy cheese with alcohol ment in hot sauce", 
      imagePath: "lib/images/sides3.jpg", 
      price: 2.25, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Baton pixxs", price: 2.99),
        Addon(name: "Fruity bats", price: 2.99),
        Addon(name: "Shrueis xhss", price: 2.99),
      ]
    ),
    Food(
      name: "Hotty mac & cheese", 
      description: "Crispy cheese with alcohol ment in hot sauce", 
      imagePath: "lib/images/sides4.jpg", 
      price: 2.25, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Baton pixxs", price: 2.99),
        Addon(name: "Fruity bats", price: 2.99),
        Addon(name: "Shrueis xhss", price: 2.99),
      ]
    ),
    Food(
      name: "Matx mac & cheese", 
      description: "Crispy cheese with alcohol ment in hot sauce", 
      imagePath: "lib/images/sides5.jpg", 
      price: 2.25, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Baton pixxs", price: 2.99),
        Addon(name: "Fruity bats", price: 2.99),
        Addon(name: "Shrueis xhss", price: 2.99),
      ]
    ),

    // desserts
    Food(
      name: "Chocolate Brownie", 
      description: "Chocolate cake with aquad seed and sugar for tasty tasty", 
      imagePath: "lib/images/dessert1.jpg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "White sauce", price: 1.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Apple Pie", 
      description: "Chocolate cake with aquad seed and sugar for tasty tasty", 
      imagePath: "lib/images/dessert2.jpg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "White sauce", price: 1.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Milk Pie", 
      description: "Chocolate cake with aquad seed and sugar for tasty tasty", 
      imagePath: "lib/images/dessert3.jpg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "White sauce", price: 1.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Cakey Brownie", 
      description: "Chocolate cake with aquad seed and sugar for tasty tasty", 
      imagePath: "lib/images/dessert4.jpg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "White sauce", price: 1.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Vanilla Rose", 
      description: "Chocolate cake with aquad seed and sugar for tasty tasty", 
      imagePath: "lib/images/dessert5.jpg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.99),
        Addon(name: "White sauce", price: 1.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: "Smoothie", 
      description: "Cold smoothie with many of carbs for you take during the summer", 
      imagePath: "lib/images/drinks1.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein powder", price: 0.99),
        Addon(name: "Almond Milk", price: 2.99),
        Addon(name: "Cococnut drink", price: 4.99),
      ],
    ),
    Food(
      name: "Fanta", 
      description: "Cold smoothie with many of carbs for you take during the summer", 
      imagePath: "lib/images/drinks2.jpg", 
      price: 3.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein powder", price: 0.99),
        Addon(name: "Almond Milk", price: 2.99),
        Addon(name: "Cococnut drink", price: 4.99),
      ],
    ),
    Food(
      name: "Pepsi", 
      description: "Cold smoothie with many of carbs for you take during the summer", 
      imagePath: "lib/images/drinks3.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein powder", price: 0.99),
        Addon(name: "Almond Milk", price: 2.99),
        Addon(name: "Cococnut drink", price: 4.99),
      ],
    ),
    Food(
      name: "Coca-Cola", 
      description: "Cold smoothie with many of carbs for you take during the summer", 
      imagePath: "lib/images/drinks4.jpg", 
      price: 1.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein powder", price: 0.99),
        Addon(name: "Almond Milk", price: 2.99),
        Addon(name: "Cococnut drink", price: 4.99),
      ],
    ),
    Food(
      name: "Smirnoff", 
      description: "Cold smoothie with many of carbs for you take during the summer", 
      imagePath: "lib/images/drinks5.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein powder", price: 0.99),
        Addon(name: "Almond Milk", price: 2.99),
        Addon(name: "Cococnut drink", price: 4.99),
      ],
    ),
  ];

  /*

  // G E T T E R S
  
  */

  List<Food> get menu => _menu;



  /*

  // O P E R A T I O N S

  */

  // add to cart
  
  // remove from cart

  // get total price of cart

  // get total numbers of item in cart

  // clear cart




  /*

  // H E L P E R S

  */




  // generate a receipt

  // formaty double value into money

  // format list of addons into a string summary
}
