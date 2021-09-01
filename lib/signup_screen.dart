import 'package:flutter/material.dart';
import 'package:login_ui_design/login_screen.dart';

import 'components.dart';

class SignupScreen extends StatelessWidget {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.grey[50],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Let's Get Started!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Create an account to Q Allure to get all features',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.name,
                    validate: (value) {},
                    label: 'Name',
                    prefix: Icons.person_outline),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (value) {},
                    label: 'Email',
                    prefix: Icons.email_outlined),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.phone,
                    validate: (value) {},
                    label: 'Phone',
                    prefix: Icons.phone_android_outlined),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {},
                    label: 'Password',
                    prefix: Icons.lock_open_outlined),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {},
                    label: 'Confirm Password',
                    prefix: Icons.lock_open_outlined),
                SizedBox(
                  height: 25,
                ),
                defaultButton(
                    function: () {},
                    text: 'create',
                    background: Colors.blue.shade800,
                    radius: 30,
                    width: 180),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, LoginScreen());
                      },
                      child: Text(
                        "Login here",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
