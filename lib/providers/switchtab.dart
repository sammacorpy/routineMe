import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwitchTabNotifier extends ChangeNotifier {
  String _value= "Home";
  String get value => _value;

  void changeTab(String tab){
    _value = tab;
    notifyListeners();
  }
}


final switchTabProvider = ChangeNotifierProvider((ref) => SwitchTabNotifier());
final isActiveProvider = Provider.autoDispose.family<bool, String>((ref, tab) => ref.watch(switchTabProvider).value.toString() == tab);