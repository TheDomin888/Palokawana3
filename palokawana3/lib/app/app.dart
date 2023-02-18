import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:palokawana3/app/cubit/root_cubit.dart';
import 'package:palokawana3/app/pages/checkout_page.dart/checkout_page.dart';
import 'package:palokawana3/app/pages/home_page/home_page.dart';
import 'package:palokawana3/app/pages/login_page/login_page.dart';
import 'package:palokawana3/app/pages/main_page/cart_model.dart';
import 'package:palokawana3/app/pages/setting_page/setting_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootPage(),
      ),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return LoginPage();
          }
          return const HomePage();
        },
      ),
    );
  }
}
