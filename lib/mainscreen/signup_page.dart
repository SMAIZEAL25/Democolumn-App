// ignore_for_file: avoid_print

// import 'dart:io';
//import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:democolumn_app/mainscreen/main.dart';
import 'package:flutter/material.dart';
import 'package:democolumn_app/Auth/Auth_widget.dart';

class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
  State<signup_page> createState() => _signup_page();
}

class _signup_page extends State<signup_page> {
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  bool passwordvisibile = false;

  ///////////////////////////////////////////////////////////////////////////

// // Firebase instructions
//   Future<void> fetchData() async {
//     try {
//       var url = Uri.parse('https://api.google.com/data');
//       var response = await http.post(url);

//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body);
//         // Process the received data as needed
//         print(data);
//       } else {
//         // Handle error response
//         print('Request failed with status: ${response.statusCode}');
//       }
//     } catch (e) {
//       // Handle any exceptions that occur
//       print('Error: $e');
//     }
//   }

////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: IconButton(
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: IconButton(
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                            },
                            //controller: _namecontroller,
                            decoration: textFormDecoration.copyWith(
                              labelText: 'full Name',
                              hintText: 'Enter your Full Name',
                            )),
                      ),
                      /************************************************************************************************************8 */
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Email Address';
                            } else if (value.isValidEmail() == false) {
                              return 'invalid email';
                            } else if (value.isValidEmail() == true) {
                              MymessageHandler.showSnackBar(
                                  _scaffoldKey, 'Your email is valid');
                            }
                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                          },
                          //controller: _emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: textFormDecoration.copyWith(
                            labelText: 'Email Address',
                            hintText: 'Enter your Email',
                          ),
                        ),
                      ),
                      /*******************************************************************************************************************/
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                            validator: (value) {
                              // validating input recieved from users
                              if (value!.isEmpty) {
                                // validation for password
                                return 'Please enter your Password';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              password = value;
                            },
                            //controller: _passwordcontroller,
                            obscureText: passwordvisibile,
                            decoration: textFormDecoration.copyWith(
                              suffixIcon: IconButton(
                                  // suffixicon are usually created in the textformfield
                                  onPressed: () {
                                    setState(() {
                                      //setstate or change state
                                      passwordvisibile =
                                          !passwordvisibile; //this changes the state set of the passwordvisibile variabel like TRUE AND FLASE
                                    });
                                  },
                                  icon: Icon(
                                    passwordvisibile

                                        /// the passwordvisible is a bool varibale declared at the top of the class
                                        ? Icons.visibility
                                        : Icons
                                            .visibility_off, // the icons.visibility_off is an inverse of the visility icons
                                    color:
                                        const Color.fromARGB(255, 39, 167, 176),
                                  )),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                            )),
                      ),
                      AlreadyHaveAccount(
                        haveAccount: 'Already have account',
                        actionLabel: 'Login',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const signin_page()));
                        },
                      ),
                      AuthMainButton(
                        //validations during sign up to print valid and not valid
                        mainButtonLabel: 'Sign up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            {
                              print('image picked');
                              print('valid');

                              print(name);
                              print(email);
                              print(password);
                            }
                          } else {
                            MymessageHandler.showSnackBar(
                                _scaffoldKey, 'Please fill in all fields');
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
