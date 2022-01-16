import 'package:flutter/material.dart';
import 'package:routineme/components/myscaffold.dart';

class Grocery extends StatelessWidget {
  const Grocery({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "Groceries",
      body: Container(),
    );
  }

  
}