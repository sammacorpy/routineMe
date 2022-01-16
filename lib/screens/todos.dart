import 'package:flutter/material.dart';
import 'package:routineme/components/myscaffold.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "Todo",
      body: Container(),
    );
  }
}