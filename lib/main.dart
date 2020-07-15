import 'package:example_app/provider/users.dart';
import 'package:example_app/routes/app_routes.dart';
import 'package:example_app/views/user_form.dart';
import 'package:example_app/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    
    return MultiProvider(providers: [

    ChangeNotifierProvider(
      create: (ctx) => Users(),
    )
      
    ],   
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}
