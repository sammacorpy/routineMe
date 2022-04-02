import 'package:flutter/material.dart';

enum IconState {
  active,
  deactive
}

class NamedIcons {
  static Map<IconState, IconData> home = {IconState.deactive: Icons.home_outlined, IconState.active: Icons.home_filled};
  static Map<IconState, IconData> routine = {IconState.deactive: Icons.access_time_outlined, IconState.active: Icons.access_time_filled};
  static Map<IconState, IconData> todo = {IconState.deactive: Icons.task_outlined, IconState.active: Icons.task};
  static Map<IconState, IconData> grocery = {IconState.deactive: Icons.shopping_bag_outlined, IconState.active: Icons.shopping_bag};
  static Map<IconState, IconData> add = {IconState.deactive: Icons.add, IconState.active: Icons.add};
  static Map<IconState, IconData> profile = {IconState.deactive: Icons.account_box_outlined, IconState.active: Icons.account_box};

  static IconData getIcon(String name, bool isActive){
    switch(name) {
      case "Routine":
        return (isActive ? NamedIcons.routine[IconState.active] : NamedIcons.routine[IconState.deactive]) as IconData;
      case "Todo": 
        return (isActive ? NamedIcons.todo[IconState.active] : NamedIcons.todo[IconState.deactive]) as IconData;
      case "Grocery":
        return (isActive ? NamedIcons.grocery[IconState.active] : NamedIcons.grocery[IconState.deactive]) as IconData;
      case "Add":
        return (isActive ? NamedIcons.add[IconState.active] : NamedIcons.add[IconState.deactive]) as IconData;
      case "Profile":
        return (isActive ? NamedIcons.profile[IconState.active] : NamedIcons.profile[IconState.deactive]) as IconData;
      case "Home":
      default:      
        return (isActive ? NamedIcons.home[IconState.active] : NamedIcons.home[IconState.deactive]) as IconData;
    }
  }
}