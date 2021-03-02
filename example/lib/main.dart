import 'package:flutter/material.dart';
import 'package:safeprint/safeprint.dart';

void main() {
  //init safeprint in here, true for Dev environment, false for Prod environment
  SafePrint.init(value: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafePrint Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SafePrint'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void printDude() {
    SafePrint.safeLog('Example for log');
    SafePrint.safeDebug('Example for debugPrint without time', time: false);
    SafePrint.safePrint('Example for print ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You wont forget the print on production apps',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: printDude,
        tooltip: 'Test',
        child: Icon(Icons.print_rounded),
      ),
    );
  }
}
