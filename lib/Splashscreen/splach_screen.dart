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
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: Center(
        // widget holding the entire widgets
        child: Column(
          children: [
            const SizedBox(height: 120),
            const Image(
              image: AssetImage('image/Nikelogo.png'),
              height: 200,
              width: 300,
            ),
            const SizedBox(height: 120),
            //Text widget  and stylings
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
            //Text widget  and stylings
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Brand new sneakers and custom kicks made with premiuim quality',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // materials widgets hoilding the materialbutton widget
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  //onpressed function with isloading boolean varible and text
                  onPressed: () async {
                    if (isLoading) return;
                    setState(() => isLoading = true);
                    (
                      const Duration(seconds: 10),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()))
                    );
                    setState(() => isLoading = false);
                  },
                  minWidth: double.infinity,
                  child: isLoading == true
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //cirrcularprogressIndicator to show is progress of user's request
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
