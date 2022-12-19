import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class FormRoute extends StatelessWidget {
  FormRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Sign Up',
          style: TextStyle(color: Colors.yellowAccent),
        )),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Form(
                  key: _formkey,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Full Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name is required!';
                          } else if (value.length < 5) {
                            return 'Name atleast 5 letters above!';
                          } else if (value.isEmpty ||
                              RegExp(r'[!@#$%^&*(),_0-9?":{}|<>]')
                                  .hasMatch(value)) {
                            return "Enter Correct Name";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Age',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter your Age',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required!';
                          } else if (int.tryParse(value)! < 18) {
                            return '18 years old above only';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Address',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Address is required!';
                          } else if (value.length < 5) {
                            return 'Address is to short!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Date of Birth',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date of Birth is required!';
                          } else if (value.length < 5) {
                            return 'Date of Birth is to short!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Place of Birth',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Place of Birth',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Place of Birth is required!';
                          } else if (value.length < 5) {
                            return 'Place of Birth is to short!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'sex',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter sex',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'sex is required!';
                          } else if (value.length < 4) {
                            return 'Male or Female only!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Citizenship',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Citizenship',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Citizenship is required!';
                          } else if (value.length < 4) {
                            return 'Citizenship is to short!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Civil Status',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Civil Status',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Civil Status is required!';
                          } else if (value.length < 4) {
                            return 'Civil Status is wrong!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.yellowAccent),
                        decoration: InputDecoration(
                          labelText: 'Religion',
                          labelStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: 'Enter Religion',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Religion is required!';
                          } else if (value.length < 4) {
                            return 'True Religion!';
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
                          child: Text('Create Account'),
                          color: Colors.yellowAccent,
                          textColor: Colors.black,
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              (Navigator.pushNamed(context, '/'));
                              return;
                            }
                          }),
                    ),
                  ]),
                ),
              ),
            ]),
      ),
    );
  }
}
