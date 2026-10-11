class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> totals = {};

  for (Product product in products) {
    if (!totals.containsKey(product.category)) {
      totals[product.category] = 0;
    }
    double currentTotal = totals[product.category]!;
    totals[product.category] = currentTotal + product.price;
  }
  return totals;
}

void main() {
  List<Product> products = [
    Product('xndzor', 'mrger', 500),
    Product('banan', 'mrger', 800),
    Product('kat', 'katnamterq', 600),
  ];
  print(totalByCategory(products));
}
