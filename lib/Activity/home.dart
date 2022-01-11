import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int a = 0;

  void alarm()
  {
    Future.delayed(Duration(seconds: 5),(){
      print("Do it 2");
    });
    print("do it");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alarm();
    print("This is inite state");
  }

  @override
  void increment(){
    setState(() {
      a++;
      print("setstate");
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("widget distroy");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Home Activity"),
            FloatingActionButton(onPressed: (){
              increment();
            }),
            Text("$a"),
          ],
        ),


      ),
    );
  }
}
