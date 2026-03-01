import 'person.dart';

class Salesperson extends Person {
  final String employeeId;

  Salesperson({
    required String id,
    required String name,
    required String contactInfo,
    required this.employeeId,
  }) : super(id: id, name: name, contactInfo: contactInfo);
}
