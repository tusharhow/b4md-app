import 'package:b4md_app/views/auth/login_screen.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'First Name',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Last Name',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Password',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Confirm Password',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Phone Number',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Address',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: 'Birthday',
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
              const SizedBox(height: kDefaultPadding * 2),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    'I will be the buyer',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  const Text(
                    'I will be the seller',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    'Subscribe to news',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 2),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 1.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffFFB85C),
                  ),
                  child: Center(
                      child: Text(
                    'Create Profile',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
              ),
              const SizedBox(height: kDefaultPadding),
            ],
          ),
        ));
  }
}
