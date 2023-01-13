import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/login_page/cubit/login_cubit.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  Future passwordReset(BuildContext context) async {
    context.read<LoginCubit>().passwordReset(widget.emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
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
              body: Center(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Image(
                      image: AssetImage('images/pyk.png'),
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Text(
                        'Resetuj hasło',
                        style: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 8.0),
                      child: Text(
                        'Podaj swój adres e-mail. Wyślemy wiadomość z instrukcjami dotyczącymi resetowania hasła.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110.0),
                      child: GestureDetector(
                        onTap: () {
                          passwordReset(context);
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
                              'Wyślij',
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
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

  //   try {
  //     await FirebaseAuth.instance
  //         .sendPasswordResetEmail(email: widget.emailController.text.trim());
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           Future.delayed(const Duration(seconds: 3), () {
  //             Navigator.of(context).pop(true);
  //           });
  //           return AlertDialog(
  //             content: Text(
  //               'Link do zmiany hasła został wysłany na Twoją skrzynkę email',
  //               style: GoogleFonts.montserrat(fontSize: 15),
  //             ),
  //           );
  //         });
  //   } on FirebaseAuthException catch (e) {
  //     (e.code);
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         Future.delayed(
  //           const Duration(seconds: 3),
  //           () {
  //             Navigator.of(context).pop(true);
  //           },
  //         );
  //         return AlertDialog(
  //           content: Text(
  //             e.code.toString(),
  //             style: GoogleFonts.montserrat(fontSize: 15),
  //           ),
  //         );
  //       },
  //     );
  //   }
  // }
