void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Orange', 'color': 'Orange', 'price': 5.0},
    {'name': 'Mango', 'color': 'Yellow', 'price': 3.5},
    {'name': 'Jack-fruit', 'color': 'Green', 'price': 2.0}
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  double discountPercentage = 10.0;
  applyPriceDiscount(fruits, discountPercentage);

  print("\nFruit Details After Applying $discountPercentage% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(1)}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  double discountFactor = 1 - (discountPercentage / 100);
  for (var fruit in fruits) {
    fruit['price'] *= discountFactor;
  }
}