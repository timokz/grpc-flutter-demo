import 'package:models/models.dart';

void main() {
  final pizza = Pizza(
    name: 'Pizza',
    description: "A delicious pizza",
    price: 10.0,
    vegetarian: true,
    imageURL:
        'https://www.tripadvisor.at/Restaurant_Review-g190454-d8317396-Reviews-Pizza_Quartier-Vienna.html#photos;aggregationId=101&albumid=101&filter=7&ff=208292084',
  );
  print(pizza);
}
