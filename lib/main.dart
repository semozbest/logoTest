import 'package:flutter/material.dart';
import 'RPSCustomPainter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage() : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _w=100;
  double _h=100;
  bool _inc=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Testing Path Maker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'M with style',
            ),
            CustomPaint(
              size: Size(_w,_h), //You can Replace this with your desired WIDTH and HEIGHT
              painter: RPSCustomPainter(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if((_w+100)>500){
              _inc=false;
            }
            else if((_w-100)<100){
              _inc=true;
            }
            if(_inc==true){
              _w+=100;
              _h+=100;
            }
            else {
              _w-=100;
              _h-=100;
            }
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
