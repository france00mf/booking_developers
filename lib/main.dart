import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final routeObserver = Get.put<RouteOberser>(RouteObserver<PageRoute>());

    return GetMaterialApp(
      title: 'Booking Developers',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      navigatorObservers: [routeObserver],
      initialRoute: '/',
      getPages: [],
    );
  }
}
