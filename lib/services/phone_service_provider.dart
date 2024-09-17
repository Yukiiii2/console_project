import 'package:riverpod/riverpod.dart';
import 'phone_service.dart'; // Import the PhoneService

final phoneServiceProvider = Provider((ref) => PhoneService());