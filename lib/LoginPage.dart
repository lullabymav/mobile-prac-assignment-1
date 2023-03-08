// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 30,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  initialValue: '',
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.all(Radius.circular(30)))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autofocus: false,
                  initialValue: '',
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.all(Radius.circular(30)))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 5),
                child: Material(
                  shadowColor: Colors.lightBlueAccent.shade100,
                  elevation: 3.0,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 40.0,
                    onPressed: (){},
                    child: Text('Log In'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
              ),
            TextButton(
                onPressed: (){},
                child: Text('Forgot Password?',
                style: TextStyle(
                    color: Colors.black54)
                ))
            ],
          ),
      )
    );
  }
}

