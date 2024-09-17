import 'package:console_project/models/phone.dart';

class PhoneService {
  final List<Phone> _inventory = [];

  void addPhone(Phone phone) {
    _inventory.add(phone);
    print('\nPhone added to the inventory successfully.');
  }

  void listPhones() {
    if (_inventory.isEmpty) {
      print('\nNo phones available in the inventory.');
    } else {
      print('\nInventory List:');
      for (var phone in _inventory) {
        print(phone);
      }
    }
  }

  void removePhone(String model) {
    final phoneToRemove = _inventory.firstWhere(
        (phone) => phone.model == model,
        orElse: () => Phone(brand: '', model: '', price: 0));
    
    if (phoneToRemove.model.isNotEmpty) {
      _inventory.remove(phoneToRemove);
      print('\nPhone removed successfully.');
    } else {
      print('\nPhone model not found in the inventory.');
    }
  }
}