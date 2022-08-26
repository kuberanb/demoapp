import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _UsernameController = TextEditingController();

  final _PasswordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Whatsapp '),
      ),
      body: Center(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: (20.0),
                    ),
                    child: Text(
                      'Login ',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.indigo,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: _UsernameController,
                      decoration: InputDecoration(
                        labelText: 'Enter Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) {
                        // if (_isDataMatched) {
                        //   return null;
                        // } else {
                        //   return 'Error';
                        // }

                        if (value == null || value.isEmpty) {
                          return 'Value is Empty';
                        } else if (value != "user") {
                          return 'Invalid user';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: _PasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) {
                        // if (_isDataMatched) {
                        //   return null;
                        // } else {
                        //   return 'Error';
                        // }

                        if (value == null || value.isEmpty) {
                          return 'Value is Empty';
                        } else if (value != "pass") {
                          return 'Invalid password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left:140),
                            child: Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      CheckLogin(context);
                                    } else {
                                      print('Data empty');
                                    }

                                    // CheckLogin(context);
                                  },
                                  child: Text(' Login ')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void CheckLogin(BuildContext ctx) async {
    final _username = _UsernameController.text;
    final _password = _PasswordController.text;

    if (_username == "user" && _password == "pass") {
//go to home

      final _sharedprefs = await SharedPreferences.getInstance();
      await _sharedprefs.setBool(SAVE_KEY_NAME, true);
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => Screenhome()));
      print('Username and password match');
    } else {
      print('Username and password does not match');
    }
  }
}
