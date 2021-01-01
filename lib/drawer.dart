import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationdemo/routes/routes.dart';

Widget createDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            child: DrawerHeader(
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('New Transaction'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.transaction);
              }),
          ListTile(
              leading: Icon(Icons.pie_chart),
              title: Text('Reports'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.home);
              }),
          ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories Manager'),
              onTap: () {
                Navigator.pushReplacementNamed(context, routes.categories);
              }),
        ],
      ));
}
