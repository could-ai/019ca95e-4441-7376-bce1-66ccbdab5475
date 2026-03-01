import 'car.dart';
import 'customer.dart';
import 'salesperson.dart';

class Sale {
  final String id;
  final Car car;
  final Customer customer;
  final Salesperson salesperson;
  final DateTime date;
  final double finalPrice;

  Sale({
    required this.id,
    required this.car,
    required this.customer,
    required this.salesperson,
    required this.date,
    required this.finalPrice,
  });
}
