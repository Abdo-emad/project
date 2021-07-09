import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "Enter U Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder())),
            ],
          ),
        ),
      ),
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Second screen"),
          actions: [Icon(Icons.settings_applications)],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login Page',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Password ",
                        hintText: "enter your password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don\'t hava an account ?"),
                              TextButton(
                                  onPressed: () {}, child: Text("Register Now"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                /* Text.rich(
                              TextSpan(style: TextStyle(fontSize: 20), children: [
                            TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                text: "Or"),
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: "Sign Up")
                          ])),*/
              ),
            ),
          ),
        ),
      ),
    );
  }
}
