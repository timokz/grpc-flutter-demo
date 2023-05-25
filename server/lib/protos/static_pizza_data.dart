import 'package:meetup_demo_server/protos/generated/protos/pizza.pb.dart';

final List<Pizza> definedPizzas = [
  Pizza(
    name: 'Margherita',
    description:
        'A classic pizza topped with tomato sauce, mozzarella cheese, and fresh basil.',
    price: 12.99,
    vegetarian: true,
    imageURL: 'https://www.example.com/images/margherita.jpg',
  ),
  Pizza(
    name: 'Pepperoni',
    description:
        'A classic pizza topped with tomato sauce, mozzarella cheese, and slices of pepperoni.',
    price: 14.99,
    vegetarian: false,
    imageURL: 'https://www.example.com/images/pepperoni.jpg',
  ),
  Pizza(
    name: 'Hawaiian',
    description:
        'A pizza topped with tomato sauce, mozzarella cheese, ham, and pineapple.',
    price: 13.99,
    vegetarian: false,
    imageURL: 'https://www.example.com/images/hawaiian.jpg',
  ),
  Pizza(
    name: 'Mushroom',
    description:
        'A pizza topped with tomato sauce, mozzarella cheese, and fresh mushrooms.',
    price: 12.99,
    vegetarian: true,
    imageURL: 'https://www.example.com/images/mushroom.jpg',
  ),
  Pizza(
    name: "Meat Lover's",
    description:
        'A pizza topped with tomato sauce, mozzarella cheese, pepperoni, sausage, ham, and bacon.',
    price: 16.99,
    vegetarian: false,
    imageURL: 'https://www.example.com/images/meatlovers.jpg',
  ),
  Pizza(
    name: 'Veggie',
    description:
        'A pizza topped with tomato sauce, mozzarella cheese, peppers, onions, mushrooms, and olives.',
    price: 13.99,
    vegetarian: true,
    imageURL: 'https://www.example.com/images/veggie.jpg',
  ),
  Pizza(
    name: 'BBQ Chicken',
    description:
        'A pizza topped with barbecue sauce, mozzarella cheese, grilled chicken, and red onions.',
    price: 15.99,
    vegetarian: false,
    imageURL: 'https://www.example.com/images/bbq-chicken.jpg',
  ),
];
