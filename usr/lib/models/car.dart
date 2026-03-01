enum CarStatus { available, sold, maintenance }

class Car {
  final String id;
  final String make;
  final String model;
  final int year;
  final double price;
  final String vin;
  CarStatus status;

  Car({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    required this.price,
    required this.vin,
    this.status = CarStatus.available,
  });

  String get title => '$year $make $model';
}
