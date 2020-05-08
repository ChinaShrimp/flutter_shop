import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

import './config/index.dart';
import 'provide/current_index_provide.dart';

void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var providers = Providers();

  providers..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: KString.homeTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: KColor.primaryColor,
        ),
        home: Center(child: Text('hello')));
  }
}
