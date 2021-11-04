import 'package:flutter/material.dart';

import 'dice.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'login', home: Loginpage());
  }
}

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cont1 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
        centerTitle: true,
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'id'),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'password'),
                        controller: cont1,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(cont1.text),
                                );
                              });
                        },
                        child: Text('print'),
                      ),
                    ),
                    Form(
                        child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle:
                                  TextStyle(color: Colors.teal, fontSize: 15))),
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(labelText: 'dice id'),
                              keyboardType: TextInputType.emailAddress,
                              controller: controller,
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: 'password'),
                              keyboardType: TextInputType.text,
                              controller: controller2,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            ButtonTheme(
                              minWidth: 100,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {
                                  if (controller.text == 'id' &&
                                      controller2.text == '12') {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Dice()));
                                    snackbar3(context);
                                  } else if (controller.text == 'id' &&
                                      controller2.text != '12') {
                                    print('pw 틀림');
                                    snackbar2(context);
                                  } else if (controller.text != 'id' &&
                                      controller2.text == '12') {
                                    print('id가 틀림');
                                    snackbar(context);
                                  }else {
                                    print('error');
                                    snackbar(context);
                                  }
                                },
                                color: Colors.orangeAccent,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void snackbar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('login error'),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
void snackbar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('pw error'),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
void snackbar3(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('login'),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
