import 'package:democolumn_app/main.dart';
import 'package:democolumn_app/mainscreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Image(
              image: AssetImage('image/Nikelogo.png'),
              height: 200,
              width: 300,
            ),
            const SizedBox(height: 70),
            Text(
              'Just Do IT',
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(''),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  onPressed: () async {
                    if (isLoading) return;
                    setState(() => isLoading = true);
                    (
                      const Duration(seconds: 10),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signin_page()))
                    );
                    setState(() => isLoading = false);
                  },
                  minWidth: double.infinity,
                  child: isLoading == true
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              CircularProgressIndicator(color: Colors.white),
                              SizedBox(width: 20),
                              Text(
                                'Please Wait...',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ])
                      : const Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
