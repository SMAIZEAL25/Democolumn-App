import 'package:flutter/material.dart';
import 'package:democolumn_app/my_buttons.dart';

void main() {
  runApp(signin_page());
}

// void main() {
//   runApp(const MyWidget());
// }

class signin_page extends StatelessWidget {
  signin_page({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  static const TextStyle textfeildStyle =
      TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color: Colors.white);

  void signUserin() {}
  //loading spinner
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ////SafeArea(
            SafeArea(
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
                    const SizedBox(height: 20),
                    // const Text(
                    //   'Welcome !',
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    //Get better experience with our online internet banking
                    // Row(
                    //   children: [
                    //     const Text(
                    //       'Get better experience with our online',
                    //       style: textfeildStyle,
                    //     ),
                    //     TextButton(
                    //         onPressed: () {},
                    //         child: const Text(
                    //           'internet banking',
                    //           style: TextStyle(color: Colors.black),
                    //         ))
                    //   ],
                    // ),
                    //internet banking

                    //****************fontFamily: AutofillHints.addressCity),),************************
                    const SizedBox(height: 70),
                    //username textfield
                    Center(
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            decoration: textFormField.copyWith(
                              prefixIcon: const Icon(Icons.person),
                              // suffixIcon: IconButton(
                              //   onPressed: () {},
                              //   icon: const Icon(Icons.visibility,
                              //       color: Colors.black),
                              // ),
                              labelText: 'Username',
                              hintText: 'Enter your username or email address',
                            ),
                          )),
                    ),
                    const SizedBox(height: 10),
                    //password texfield
                    Center(
                      child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: TextField(
                            decoration: textFormField.copyWith(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.visibility,
                                    color: Colors.black),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                            ),
                          )),
                    ),
                    //password field ends here
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                      child: MaterialButton(
                        onPressed: () {
                          if (isLoading) return;
                          setState(() => isLoading = true);
                          await Future.delayed(Duration(seconds: 5));
                          setState(() => isLoading = false);
                        },
                        child: isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white)
                            : const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                    //forgotpassword field
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot ?',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/signup');
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(color: Colors.black),
                              ))
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
