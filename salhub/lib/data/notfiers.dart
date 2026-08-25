import 'package:flutter/material.dart';
import 'package:salhub/services/auth_service.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<AuthService> authService = ValueNotifier(AuthService());
