import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _TextFieldLayout createState() => _TextFieldLayout();
}

class _TextFieldLayout extends State<LoginScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Login Page"),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
                child: Column(
              /* mainAxisAlignment: MainAxisAlignment.end,*/
              children: [
                TextField(
                  controller: _username,
                  onChanged: (text) {
                    print(text.toLowerCase());
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      prefix: Icon(Icons.person),
                      suffix: Icon(Icons.check),
                      hintText: "Please Enter Email",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ),
                TextField(
                  controller: _password,
                  onChanged: (text) {
                    print(text.toLowerCase());
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      prefix: Icon(Icons.lock),
                      suffix: Icon(Icons.check),
                      hintText: "Please Enter Password",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_username.value.text);
                    print(_password.value.text);
                  },
                  child: Text("Submit"),
                ),
              ],
            )),
          ),
        ));
  }
}
