import 'package:flutter/material.dart';
import 'package:navigationdemo/routes/routes.dart';
import 'package:navigationdemo/transactionview.dart';
import 'categoriesview.dart';
import 'drawer.dart';
import 'reportsview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Demo',
      theme: _createTheme(),
      home: TransactionView(),
      routes: {
        routes.transaction: (context) => TransactionView(),
        routes.categories: (context) => CategoriesView(),
        routes.home: (context) => ReportsView(),
      },
    );
  }
}

ThemeData _createTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.purple[800],
    accentColor: Colors.pink[600],
    canvasColor: Color.fromRGBO(251, 228, 251, 1),
    fontFamily: 'Georgia',
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: createDrawer(context),
      body: Center(
        child: _createWidgetOptions().elementAt(_selectedIndex),
      ),
    );
  }

  List<Widget> _createWidgetOptions() {
    return <Widget>[
      _createTransactionView(),
      _createCategoriesView(),
       _createReportsView()
    ];
  }

  Widget _createTransactionView() {
    return TransactionView();
  }

  Widget _createCategoriesView() {
    return CategoriesView();
  }

  Widget _createReportsView() {
    return ReportsView();
  }

}
