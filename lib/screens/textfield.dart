import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  final String title;

  TextFieldDemo({Key key, this.title}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String username;
  String password;
  // bool _errorUser = false;
  // String _errorUserText;
  // bool _errorPass = false;
  // String _errorPassText;

  // TextEditingController _val;
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 250,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: InputDecoration(
                    // errorText: _errorUser == true ? _errorUserText : null,
                    prefixIcon: Icon(
                      Icons.account_box,
                      // color: Colors.deepOrange,
                    ),
                    labelText: 'Username',
                    hintText: 'Enter Username',
                    labelStyle: TextStyle(color: Colors.lightBlue),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                      ),
                    ),
                    // errorBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.red,
                    //   ),
                    // ),
                    // focusedErrorBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.red,
                    //   ),
                    // ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 250,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    // errorText: _errorPass == true ? _errorPassText : null,
                    prefixIcon: Icon(
                      Icons.lock,
                      // color: Colors.deepOrange,
                    ),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    labelStyle: TextStyle(color: Colors.lightBlue),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                      ),
                    ),
                    // errorBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.red,
                    //   ),
                    // ),
                    // focusedErrorBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.red,
                    //   ),
                    // ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  validateTextField(context);
                },
                child: Text('Submit'),
                color: Colors.blue[900],
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(username);
    print(password);
    if (username == null ||
        username.trim().isEmpty ||
        password == null ||
        password.trim().isEmpty) {
      AlertDialog alert = AlertDialog(
        title: Text('Alert Dialog'),
        content: Container(child: Text('Please Fill the empty textbox.')),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          )
        ],
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    // if (username == null || username.trim().isEmpty) {
    //   setState(() {
    //     _errorUser = true;
    //     _errorUserText = 'This field is required.';
    //   });
    // } else {
    //   setState(() {
    //     _errorUser = false;
    //   });
    // }
    // if (password == null || password.trim().isEmpty) {
    //   setState(() {
    //     _errorPass = true;
    //     _errorPassText = 'This field is required.';
    //   });
    // } else {
    //   setState(() {
    //     _errorPass = false;
    //   });
    // }
  }
}

// Form(
//   key: _formKey,
//   child: Column(
//     children: [
//       TextFormField(
//         enabled: false,
//         validator: (value) {
//           if (value.trim().isEmpty) {
//             return 'Value is required!';
//           }
//           return null;
//         },
//       ),
//     ],
//   ),
// )
