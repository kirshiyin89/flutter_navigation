import 'package:flutter/material.dart';
import 'drawer.dart';

class TransactionView extends StatelessWidget {
  static const String routeName = '/transaction';



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Transaction'),
              centerTitle: true,
            ),
            drawer: createDrawer(context)
        ));
  }
}
