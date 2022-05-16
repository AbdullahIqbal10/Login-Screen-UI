import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/icon.png'),
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 40,
                  width: 300,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Login"))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 52),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: () {
                    print('click');
                  }),
              SizedBox(
                height: 10,
              ),
              SignInButton(
                  buttonType: ButtonType.facebook,
                  onPressed: () {
                    print('click');
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    " Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 39, 89, 177),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
