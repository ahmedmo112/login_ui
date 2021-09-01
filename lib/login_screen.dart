import 'package:flutter/material.dart';
import 'package:login_ui_design/components.dart';
import 'package:login_ui_design/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage('images/login.jpg'),
                  height: 150,
                  width: 150,
                ),
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Log in to your existant account of Q Allure',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (value) {},
                  label: 'Email',
                  prefix: Icons.person_outline),
              SizedBox(
                height: 15,
              ),
              defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validate: (value) {},
                  label: 'Password',
                  prefix: Icons.lock_open_outlined),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              defaultButton(
                  function: () {},
                  text: 'LOG IN',
                  background: Colors.blue.shade900,
                  radius: 30,
                  width: 180),
              SizedBox(
                height: 40,
              ),
              Text(
                'Or connect using',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  defaultButtonwithIcon(
                      background: Color(0xff3b5998),
                      radius: 7,
                      function: () {},
                      isUpperCase: false,
                      text: 'Facebook',
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/1024px-Facebook_icon_2013.svg.png'),
                  defaultButtonwithIcon(
                      background: Colors.red,
                      isAsset: true,
                      radius: 7,
                      function: () {},
                      isUpperCase: false,
                      text: 'Google',
                      imageWidth: 15,
                      image: 'images/google.png'),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, SignupScreen());
                    },
                    child: Text(
                      "Sign Up",
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
      ),
    );
  }
}
