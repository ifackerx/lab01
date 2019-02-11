import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("custom form"),
      ),
      body:  
        Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset("resources/profile.jpg"),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),
              
              // obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              
              validator: (value){
                if(value.isEmpty){
                  return "Plesase input some value <3";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "PassWord",
                hintText: "Please input your email",
                icon: Icon(Icons.lock),
              ),
              
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              
              validator: (value){
                if(value.isEmpty){
                  return "Plesase input some value <3";
                }
              },
            ),
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: (){
                _formKey.currentState.validate();
              },
              
            )
          ],
        ),
      ),
    );
  }
}