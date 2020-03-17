import 'package:diletta_password/dilettaPassword.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diletta Password Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diletta Password Example'),
      ),
      body:  Column(
        children: [
          Container(
            color: Colors.deepOrangeAccent,
            padding: EdgeInsets.only(
              top: 20.0,
              right: 18.0,
              bottom: 20.0,
              left: 50.0
            ),
            width: MediaQuery.of(context).size.width,
            child: DilettaPassword(onlyNumbers: true, size: 6, color: Colors.white)
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Password'
              ),
              keyboardType: TextInputType.number,
              controller: DilettaPasswordService().password,
            )
          )
        ],
      )
    );
  }
}
