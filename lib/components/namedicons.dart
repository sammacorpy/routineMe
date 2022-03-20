import 'package:flutter/material.dart';

enum IconState {
  active,
  deactive
}

class NamedIcons {
  static Map<IconState, IconData> home = {IconState.deactive: Icons.home_outlined, IconState.active: Icons.home_filled};
  static Map<IconState, IconData> routine = {IconState.deactive: Icons.home_outlined, IconState.active: Icons.home_filled};
  static Map<IconState, IconData> todo = {IconState.deactive: Icons.task_outlined, IconState.active: Icons.task};
  static Map<IconState, IconData> grocery = {IconState.deactive: Icons.shopping_bag_outlined, IconState.active: Icons.shopping_bag};
  static Map<IconState, IconData> add = {IconState.deactive: Icons.add, IconState.active: Icons.add};
  static Map<IconState, IconData> profile = {IconState.deactive: Icons.account_box_outlined, IconState.active: Icons.account_box};
}