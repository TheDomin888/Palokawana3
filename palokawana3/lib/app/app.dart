import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:palokawana3/app/auth/auth_page.dart';
import 'package:palokawana3/app/cubit/root_cubit.dart';
import 'package:palokawana3/app/pages/home_page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                final user = snapshot.hasData;
                if (snapshot.hasData) {
                  return const HomePage();
                } else {
                  return const AuthPage();
                }
              });
        },
      ),
    );
  }
}
