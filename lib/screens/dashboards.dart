import 'package:flutter/material.dart';
import 'package:routineme/components/myscaffold.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "Dashboard",
      body: Container(),
    );
  }
  
}