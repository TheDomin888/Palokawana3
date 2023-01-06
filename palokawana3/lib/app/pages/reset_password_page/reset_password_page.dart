import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(const Duration(seconds: 3), () {
              Navigator.of(context).pop(true);
            });
            return AlertDialog(
              content: Text(
                'Link do zmiany hasła został wysłany na Twoją skrzynkę email',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            );
          });
    } on FirebaseAuthException catch (e) {
      (e.code);
      showDialog(
        context: context,
        builder: (context) {
          Future.delayed(
            const Duration(seconds: 3),
            () {
              Navigator.of(context).pop(true);
            },
          );
          return AlertDialog(
            content: Text(
              e.code.toString(),
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
      ),
      backgroundColor: const Color(0xFFf5e1d3),
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
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: ('Adres e-mail'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110.0),
              child: GestureDetector(
                onTap: passwordReset,
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
  }
}
