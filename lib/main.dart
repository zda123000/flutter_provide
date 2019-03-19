import 'package:flutter/material.dart';
import 'index.dart';
import 'package:provide/provide.dart';
import './provide/Counter.dart';

void main() {
  var counter =Counter();
  var providers = Providers();

  providers..provide(Provider<Counter>.value(counter));


  runApp(
    ProviderNode(
      child: MyApp(),
      providers: providers,
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
