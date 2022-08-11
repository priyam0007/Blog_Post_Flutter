import 'package:blog_app/login_page.dart';
import 'package:flutter/material.dart';

// import 'singup_app/asserts/InstLogo2.png';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const LoginPage(title: 'Sing up Page'),
    );
  }
}

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SignUp Page')),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 450,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        label: Text('FullName'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        label: Text('email'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        label: Text('password'),

                        //label: Text("First Name ")
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        label: Text('conform password'),

                        //label: Text("First Name ")
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage(title: 'LoginPage');
                      }));
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                    text: "here you create your account and?",
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.cyan)),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}