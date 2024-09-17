class Phone {
  final String brand;
  final String model;
  final double price;

  Phone({required this.brand, required this.model, required this.price});

  @override
  String toString() {
    return 'Brand: $brand, Model: $model, Price: P${price.toStringAsFixed(2)}';
  }
}
