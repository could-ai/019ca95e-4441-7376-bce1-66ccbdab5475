import 'person.dart';

class Customer extends Person {
  final String email;

  Customer({
    required String id,
    required String name,
    required String contactInfo,
    required this.email,
  }) : super(id: id, name: name, contactInfo: contactInfo);
}
