import 'package:b4md_app/views/auth/sign_up.dart';
import 'package:b4md_app/views/homepage.dart';
import 'package:flutter/material.dart';

import '../../components/nav_bar.dart';
import '../../constant.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 4),
          Image.asset(
            'assets/logos/logo.PNG',
            width: 120,
            height: 120,
          ),
          const SizedBox(height: kDefaultPadding + 5),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 55,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 55,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) {
                return const MyNevBar();
              }), (route) => false);
            },
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffFFB85C),
              ),
              child: const Center(
                  child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          const Center(
            child: Text('Or',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                )),
          ),
          const SizedBox(height: kDefaultPadding),
          InkWell(
            onTap: () {},
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/icons/google.png',
                  //   height: 40,
                  //   width: 40,
                  // ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Login with Facebook',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 4),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              }));
            },
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/icons/google.png',
                  //   height: 40,
                  //   width: 40,
                  // ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    ));
  }
}
