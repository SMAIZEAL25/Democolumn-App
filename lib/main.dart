import 'package:flutter/material.dart';
import 'package:democolumn_app/my_buttons.dart';
import 'package:democolumn_app/mytext_field.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 218, 219, 221),
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
                      image: AssetImage('image/nike.jpg'),
                    ),
                  ),
                  //welcome text
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome !',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  //Get better experience with our online internet banking
                  Row(
                    children: [
                      const Text(
                        'Get better experience with our online',
                        style: textfeildStyle,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'internet banking',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  //internet banking

                  //****************fontFamily: AutofillHints.addressCity),),************************
                  const SizedBox(height: 70),
                  //username textfield
                  Center(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                  const SizedBox(height: 10),
                  Mybutton(onTap: signUserin),
                  const SizedBox(height: 10),
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/signup');
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(color: Colors.white),
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
    );
    //////////////),
  }
}

var textFormField = InputDecoration(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.purpleAccent, width: 1),
      borderRadius: BorderRadius.circular(25)),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.purpleAccent, width: 2),
    borderRadius: BorderRadius.circular(25),
  ),
);
