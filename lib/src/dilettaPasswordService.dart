import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class DilettaPasswordService {
  static DilettaPasswordService _instance;

  TextEditingController _passwordController;
  TextEditingController get password => _passwordController;

  factory DilettaPasswordService() {
    _instance ??= DilettaPasswordService._internal();
    return _instance;
  }

  DilettaPasswordService._internal() {
    _passwordController = TextEditingController();
  }

  void setController(bool numeric, int size) {
    String mask = '';

    for (int i = 0; i < size; i++)
      mask += numeric ? '0' : '*';
    
    _passwordController = MaskedTextController(mask: mask, text: '');
  }
}