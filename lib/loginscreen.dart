import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginUI();
  }
}

class LoginUI extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.pink,
          ]),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              children: <Widget>[
                _header('Beauty Login'),
                _form(),
                _signup(),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _header(String title) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset('images/android.png', width: 100),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.pink),
          ),
          SizedBox(
            width: 200,
            child: Divider(color: Colors.pink.shade100),
          )
        ],
      ),
    );
  }

  Widget _form() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _email(),
            _password(),
            _switch(),
            _loginBtn(),
          ],
        ),
      ),
    );
  }

  Widget _email() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.black.withOpacity(0.2),
        filled: true,
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
        ),
        prefixIcon: Icon(Icons.mail, size: 30, color: Colors.pinkAccent),
        hintText: 'email',
        hintStyle: TextStyle(color: Colors.white30),
      ),
    );
  }

  Widget _password() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.black.withOpacity(0.2),
        filled: true,
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
        ),
        prefixIcon: Icon(Icons.lock, size: 30, color: Colors.pinkAccent),
        hintText: 'password',
        hintStyle: TextStyle(color: Colors.white30),
      ),
    );
  }

  Widget _switch() {
    return Row(
      children: <Widget>[
        CupertinoSwitch(
          value: true,
          activeColor: Colors.pink,
          onChanged: (bool value) {},
        ),
        Text(
          'remember_me',
          style: TextStyle(color: Colors.pinkAccent, fontSize: 13),
        )
      ],
    );
  }

  Widget _loginBtn() {
    return FlatButton(
        color: Colors.pinkAccent.shade100,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ));
  }

  Widget _signup() {
    return Expanded(
        child: Center(
      child: Text('Sign Up Account'),
    ));
  }
}
