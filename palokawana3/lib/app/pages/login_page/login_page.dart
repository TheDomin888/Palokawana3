// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/login_page/cubit/login_cubit.dart';
import 'package:palokawana3/app/pages/reset_password_page/reset_password_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                elevation: 6.0,
                behavior: SnackBarBehavior.floating,
                content: Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(width: 20),
                    Text(
                      state.errorMessage!,
                      style: GoogleFonts.montserrat(
                          fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
                backgroundColor: Colors.white,
              ),
            );
          }
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 220, 200, 191),
              ),
              backgroundColor: const Color.fromARGB(255, 243, 234, 228),
              body: ListView(
                children: [
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Image(
                      image: AssetImage('images/pyk.png'),
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isCreatingAccount == true
                            ? 'Zarejestruj się'
                            : 'Zaloguj się',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 160, 80, 48),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      isCreatingAccount == true
                          ? 'Witaj! Nie masz konta? Zarejestruj się'
                          : 'Witaj ponownie! Brakowało nam Ciebie!',
                      style: GoogleFonts.montserrat(fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: widget.emailController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ('Adres e-mail'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: widget.passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ('Hasło'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      if (isCreatingAccount == true) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: widget.confirmpasswordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: ('Potwierdź Hasło'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (isCreatingAccount == false) ...[
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                isCreatingAccount = true;
                              },
                            );
                          },
                          child: Text(
                            'Utwórz konto',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      if (isCreatingAccount == true) ...[
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                isCreatingAccount = false;
                              },
                            );
                          },
                          child: Text(
                            'Masz juz konto?',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ResetPasswordPage();
                            }),
                          );
                        },
                        child: Text(
                          'Resetuj Hasło',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110.0),
                    child: GestureDetector(
                      onTap: () {
                        if (isCreatingAccount) {
                          signUp(context);
                        } else {
                          signIn(context);
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 160, 80, 48),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            isCreatingAccount == true
                                ? 'Zarejestruj się'
                                : 'Zaloguj się',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(thickness: 0.5, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Lub zaloguj się za pomocą',
                            style: GoogleFonts.montserrat(fontSize: 15),
                          ),
                        ),
                        const Expanded(
                          child: Divider(thickness: 0.5, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          height: 62,
                          child: Image.asset('images/icons/google.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          height: 62,
                          child: Image.asset('images/icons/facebook.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          height: 62,
                          child: Image.asset('images/icons/apple.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future signIn(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(
              Color.fromARGB(255, 160, 80, 48),
            ),
          ),
        );
      },
    );
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Navigator.pop(context);

    context
        .read<LoginCubit>()
        .logIn(widget.emailController.text, widget.passwordController.text);
  }

  Future signUp(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(
                Color.fromARGB(255, 160, 80, 48),
              ),
            ),
          );
        });
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Navigator.pop(context);
    context.read<LoginCubit>().signUp(
          widget.emailController.text,
          widget.passwordController.text,
          widget.confirmpasswordController.text,
        );
  }
}
