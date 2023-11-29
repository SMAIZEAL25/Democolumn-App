import 'package:democolumn_app/mainscreen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:democolumn_app/mainscreen/forgot_pw_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signin_page(),
    ),
  );
}

class signin_page extends StatefulWidget {
  const signin_page({super.key});

  @override
  State<signin_page> createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {
  @override
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordVisible = false;

  // this for the sign up page
  // static const TextStyle textfeildStyle =
  //     TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color: Colors.white);

  void signUserin() {}
  //loading spinner
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  //logo
                  const SizedBox(
                    height: 300,
                    child: Image(
                      image: AssetImage('image/nike.png'),
                    ),
                  ),
                  //welcome text
                  const SizedBox(height: 30),
                  Text(
                    'welcome back ',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),

                  //****************fontFamily: AutofillHints.addressCity),),************************
                  Form(
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        //username textfield
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            //validation to check if this field is empty and the type of error message it's should return
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please this fiel is required';
                              }
                              return null;
                            },
                            decoration: textFormField.copyWith(
                              prefixIcon: const Icon(Icons.person),
                              labelText: 'Email Address',
                              hintText: 'Enter your email address',
                            ),
                          ),
                        )),

                        const SizedBox(height: 10),
                        //password texfield
                        Center(
                          child: Padding(
                              padding: const EdgeInsets.all(17),
                              child: TextField(
                                //obscuretext depends on the value of passwordVisible which has been set to true or false
                                obscureText: passwordVisible,
                                decoration: textFormField.copyWith(
                                  prefixIcon: const Icon(Icons.lock),
                                  //password visibilty change set state controller set change to true or false
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordVisible = !passwordVisible;
                                      });
                                    },
                                    icon: Icon(
                                        // condidtional statement that returns the visibility or not visibile when this icon is clicked on
                                        passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.black),
                                  ),
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                ),
                              )),
                        ),

                        //password field ends here
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                            child: MaterialButton(
                              child: isLoading == true
                                  ? const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                          CircularProgressIndicator(
                                              color: Colors.white),
                                          SizedBox(width: 20),
                                          Text(
                                            'Please Wait...',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ])
                                  : const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                              onPressed: () async {
                                if (isLoading) return;
                                setState(() => isLoading = true);
                                await Future.delayed(
                                    const Duration(seconds: 10));
                                setState(() => isLoading = false);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //forgotpassword field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const forgotpassword()));
                          },
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const signup_page()));
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  //sigin or contuine with

                  //google account

                  //apple account

                  // not a member with an option to register
                ],
              ),
            ),
          ),
        ),
      ),
    );
    //////////////),
  }
}

var textFormField = InputDecoration(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
  enabledBorder: OutlineInputBorder(
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 12, 12, 12), width: 1),
      borderRadius: BorderRadius.circular(25)),
  focusedBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromARGB(255, 12, 12, 12), width: 2),
    borderRadius: BorderRadius.circular(25),
  ),
);
