import 'package:flutter/material.dart';
import 'drawer.dart';

class CategoriesView extends StatelessWidget {
  static const String routeName = '/categories';



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
                appBar: AppBar(
                  title: const Text('Categories'),
                  centerTitle: true,
                ),
                drawer: createDrawer(context)
    ));
  }
}
