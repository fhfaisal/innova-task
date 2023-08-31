import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:koli_store/color_collections.dart';

import '../drawer_screens/drawer_controller/drawer_controller_page.dart';

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String email;
  late String password;

  _signUp(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DrawerControllerPage(),
          ));
    } else {
      return 'Please fill up all the fields';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Details',
                style: myFontStyle(22, FontWeight.w600, textBlack),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onTapOutside: (event) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                cursorColor: textOrange,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email must be filled';
                  } else if (!value.contains('@')) {
                    return 'Invalid email format';
                  } else if (!value.contains('.com')) {
                    return 'Invalid email format';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: textBlack),
                decoration: InputDecoration(
                  hintText: 'Username , email & phone number',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: textBlack, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: textBlack, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onTapOutside: (event) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                cursorColor: textOrange,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password must be filled';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
                onChanged: (value) {
                  password = value;
                },
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: textBlack),
                decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: textBlack, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: textBlack, width: 1),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('Forgot Password?')],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    _signUp(context);
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text('Log In',
                          style:
                              myFontStyle(22, FontWeight.bold, Colors.white)),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "------------ Or Sign up With -----------",
                    style: TextStyle(),
                  )),
              SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Container(
                      height: 40,
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(width: 10,),

                  CircleAvatar(
                    child: Container(
                      height: 40,
                      child: Image.network(
                        'https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-transparent-png.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    child: Container(
                      height: 40,
                      child: Image.network(
                        'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
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
