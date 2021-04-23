import 'package:flutter/material.dart';

import 'package:devquiz/routers/routers.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
