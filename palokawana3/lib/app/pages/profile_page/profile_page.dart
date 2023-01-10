import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/cubit/root_cubit.dart';
import 'package:palokawana3/app/pages/home_page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 243, 234, 228),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 5, left: 36, right: 23),
                child: Text(
                  'Mój Profil',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(2, 3),
                          blurRadius: 8),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 11, left: 38, right: 23),
                child: Text(
                  state.user?.email! ?? '',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 11, left: 38, right: 38),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ProfilePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 11, left: 20, right: 100),
                        child: Text(
                          'Moje zamówienia',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 50, left: 10, right: 10),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 11, left: 38, right: 38),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ProfilePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 11, left: 20, right: 100),
                        child: Text(
                          'Adres Dostawy',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 50, left: 30, right: 10),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 11, left: 38, right: 38),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ProfilePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 11, left: 15, right: 100),
                        child: Text(
                          'Metody płatności',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 50, left: 15, right: 10),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 11, left: 38, right: 38),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ProfilePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 11, left: 10, right: 95),
                        child: Text(
                          'Ustawienia',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 50, left: 70, right: 10),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<RootCubit>().signOut();
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(
                            top: 17, bottom: 17, left: 31, right: 31),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 160, 80, 48),
                      ),
                    ),
                    child: Text(
                      'Wyloguj się',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
