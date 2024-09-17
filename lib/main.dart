import 'dart:io';

import 'package:console_project/models/phone.dart';
import 'package:console_project/services/phone_service_provider.dart';
import 'package:riverpod/riverpod.dart';

final container = ProviderContainer();

void main() {
  print('Welcome to the Phone Inventory Console!');
  while (true) {
    print('\nOptions:');
    print('1. Add Phone');
    print('2. List Phones');
    print('3. Remove Phone');
    print('4. Exit');
    stdout.write('Choose an option (1-4): ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        _addPhone();
        break;
      case '2':
        _listPhones();
        break;
      case '3':
        _removePhone();
        break;
      case '4':
        print('\nExiting the system. Sayonara!');
        exit(0);
      default:
        print('\nInvalid option. Please choose again.');
    }
  }
}

void _addPhone() {
  stdout.write('\nEnter phone brand: ');
  String brand = stdin.readLineSync()!;

  stdout.write('Enter phone model: ');
  String model = stdin.readLineSync()!;

  stdout.write('Enter phone price: ');
  double price = double.parse(stdin.readLineSync()!);

  final phone = Phone(brand: brand, model: model, price: price);
  container.read(phoneServiceProvider).addPhone(phone);
}

void _listPhones() {
  container.read(phoneServiceProvider).listPhones();
}

void _removePhone() {
  stdout.write('\nEnter the model of the phone to remove: ');
  String model = stdin.readLineSync()!;
  container.read(phoneServiceProvider).removePhone(model);
}
