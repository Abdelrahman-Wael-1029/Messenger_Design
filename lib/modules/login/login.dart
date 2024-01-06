import 'package:flutter/material.dart';
import 'package:flutterapp/shared/components/componants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, bool> errors = {
    'email': false,
    'password': false,
  };
  bool obscureText = true;
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: const Text(
          "Login APP",
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: keyForm,
              child: Column(
                children: [
                  filedForm(
                    label: "Email",
                    prefixIcon: Icons.email,
                    validate: (value) {
                      dynamic ret;
                      setState(() {
                        if (value!.isEmpty) {
                          errors['email'] = true;
                          ret = 'the email is required';
                        } else {
                          errors['email'] = false;
                        }
                      });
                      return ret;
                    },
                    keyboardType: TextInputType.emailAddress,
                    floatingLabelcolor:
                        errors['email']! ? Colors.red : Colors.blueAccent,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  filedForm(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    validate: (value) {
                      dynamic ret;
                      setState(() {
                        if (value!.isEmpty) {
                          errors['password'] = true;
                          ret = 'the password is required';
                        } else {
                          errors['password'] = false;
                        }
                      });
                      return ret;
                    },
                    isPass: obscureText,
                    suffix: obscureText? Icons.visibility: Icons.visibility_off,
                    onpressedSuffix: (){
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    keyboardType: TextInputType.visiblePassword,
                    floatingLabelcolor:
                        errors['password']! ? Colors.red : Colors.blueAccent,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      textColor: Colors.white,
                      color: Colors.lightBlue,
                      onPressed: () {
                        keyForm.currentState!.validate();
                      },
                      child: const Text("Login"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account"),
                      TextButton(
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
