import 'dart:ffi';

import 'package:flutter/material.dart';
import 'form.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/form': (context) => FormRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  HomeRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Log In',
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Form(
                    key: _formkey,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter email',
                            prefixIcon: Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'email is required!';
                            } else if (value.length < 5) {
                              return 'Bawal ang walang jowa';
                            } else if (value.isEmpty ||
                                !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                              return "Enter Correct Email Address";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required!';
                            } else if (value.length < 5) {
                              return 'Sinabing Bawal walang jowa!';
                            } else if (value.isEmpty ||
                                !RegExp(r'[A-Z]').hasMatch(value)) {
                              return "Enter Correct Password";
                            } else if (value.isEmpty ||
                                !RegExp(r'[_@#$%^&*(),.?":{}|<>]')
                                    .hasMatch(value)) {
                              return "Enter Correct Password";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: MaterialButton(
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: Text('Login'),
                            color: Colors.blue,
                            textColor: Colors.black,
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                (Navigator.pushNamed(context, '/first'));
                                return;
                              }
                            }),
                      ),
                      TextButton(
                        child: Text('Sign up here!'),
                        onPressed: () {
                          (Navigator.pushNamed(context, '/form'));
                        },
                      ),
                      Text('Forgot Password?',
                          style: TextStyle(color: Colors.blue)),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Curriculom Vitae"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/avatar.jpg',
                ),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Name:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "Raymund B. Buenaventura",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                "Course:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "IT",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                "Contact Number:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "09506845013",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Gmail:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "raynelbuenaventura@gmail.com",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Address:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "Papallasen,Burgos,Pangasinan",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 90.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.0),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // background
                      onPrimary: Colors.black, // foreground
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Icon(Icons.library_books_rounded),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.black, // foreground
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Icon(Icons.build),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Educational Background"),
        backgroundColor: Colors.blue,
      ), // AppBar
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.blue,
              ),
              Text(
                "Tertiary Education:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Philippine College of Science and Technology",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Bachelor of Science in Information Technology",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 159, 181),
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Year 2019-2023",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 159, 181),
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Secondary Education:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "STI Alaminos",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Year 2017-2018",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 159, 181),
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Burgos National High School",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "- Year 2012-2016",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 159, 181),
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                "Primary Education:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "St. Isidore Learning Center",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Year 2007-2012",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 159, 181),
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Colors.blue,
      ), // AppBar
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.grey[800],
              ),
              Text(
                "- Pinoy Pool Plater",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Trustworthy",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Multi-Tasking",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "- Loyalty",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "- Critical thingking",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "- Active Listening",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "- Decision Making",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
