import 'package:flutter/material.dart';
import 'package:flutter_app/Module1/layout.dart';
import 'package:flutter_app/Module1/temperatureTranslate.dart';
import 'package:flutter_app/Module2/todo_app1/main_todo.dart';
import 'package:flutter_app/Module3/main_user.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        )
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget appBarCustom() {
      return AppBar(
        title: Text('Minh\'s homework'),
      );
    }

    return Scaffold(
      appBar: appBarCustom(),
      body: Column(
        children: [
          Center(
            child: Text('Module 1: '),
          ),
          RaisedButton(
            child: Text('Layout'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LayOut(),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text('Temperature Translate'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TemperatureTranslate(),
                ),
              );
            },
          ),
          SizedBox(height: 20,),
          Center(
            child: Text('Module 2: '),
          ),
          RaisedButton(
            child: Text('ToDo App'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToDoApp(),
                ),
              );
            },
          ),
          SizedBox(height: 20,),
          Center(
            child: Text('Module 3: '),
          ),
          RaisedButton(
            child: Text('User UI with random API'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainUser(),
                ),
              );
            },
          ),

        ],
      )
    );
  }
}
