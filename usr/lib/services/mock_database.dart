import '../models/car.dart';
import '../models/customer.dart';
import '../models/salesperson.dart';
import '../models/sale.dart';

class MockDatabase {
  static final MockDatabase _instance = MockDatabase._internal();
  factory MockDatabase() => _instance;
  MockDatabase._internal();

  final List<Car> cars = [
    Car(id: '1', make: 'Toyota', model: 'Camry', year: 2022, price: 25000, vin: 'VIN123456', status: CarStatus.available),
    Car(id: '2', make: 'Honda', model: 'Civic', year: 2021, price: 22000, vin: 'VIN654321', status: CarStatus.available),
    Car(id: '3', make: 'Ford', model: 'Mustang', year: 2023, price: 45000, vin: 'VIN987654', status: CarStatus.sold),
    Car(id: '4', make: 'Tesla', model: 'Model 3', year: 2022, price: 38000, vin: 'VIN456789', status: CarStatus.available),
    Car(id: '5', make: 'Chevrolet', model: 'Tahoe', year: 2020, price: 50000, vin: 'VIN112233', status: CarStatus.maintenance),
  ];

  final List<Customer> customers = [
    Customer(id: '1', name: 'John Doe', contactInfo: '555-0101', email: 'john@example.com'),
    Customer(id: '2', name: 'Jane Smith', contactInfo: '555-0102', email: 'jane@example.com'),
  ];

  final List<Salesperson> salespersons = [
    Salesperson(id: '1', name: 'Alice Dealer', contactInfo: '555-9999', employeeId: 'EMP001'),
    Salesperson(id: '2', name: 'Bob Seller', contactInfo: '555-8888', employeeId: 'EMP002'),
  ];

  final List<Sale> sales = [];

  void addCar(Car car) {
    cars.add(car);
  }

  void addCustomer(Customer customer) {
    customers.add(customer);
  }

  void recordSale(Sale sale) {
    sales.add(sale);
    // Update car status
    final carIndex = cars.indexWhere((c) => c.id == sale.car.id);
    if (carIndex != -1) {
      cars[carIndex].status = CarStatus.sold;
    }
  }
}
