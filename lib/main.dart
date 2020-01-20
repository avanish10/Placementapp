import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  initialRoute: '/',
      routes:
    {
      '/': (context) => MyApp(),
      '/datech':(cb) => Datech(),
      '/cardcompany':(ctx) => cardcompany(),
      '/information': (ctxt) => information()

    },

));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Placement App"),
      ),

      backgroundColor: Colors.lightBlue,
      drawer: sidenavigation(),
    );
  }
}
  class sidenavigation extends StatelessWidget {
    @override
    Widget build(BuildContext cb) {
      // TODO: implement build

      return Drawer(
        elevation: 1.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Hello"),
              decoration: BoxDecoration(
                  color: Colors.red
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pop(cb);
              },
            ),
            ListTile(
              title: Text("Info"),
              onTap: () {
                Navigator.pop(cb);
                Navigator.pushNamed(cb, '/datech');
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(cb);
              },
            ),
          ],
        ),

      );
    }
  }
    class Datech extends StatefulWidget{
  @override
      _Myform createState() => _Myform();

    }

    class _Myform extends State<Datech>{
  final myController = TextEditingController();

  @override
  void initState()
  {
      super.initState();
      myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }
  _printLatestValue()
  {
    print("Text field: ${myController.text}");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Year'),
      ),
      body: Padding(padding:const EdgeInsets.all(16.0),
      child: Column(children: <Widget>[
        TextField(
          controller:myController,
          onChanged: (text){
          print("First Text field: $text");
        },
        ),
       FlatButton(onPressed: (){
         Navigator.pushNamed(context, '/cardcompany');
       }, child: Text('Submit'))
      ],),),
    );
  }

    }

    class cardcompany extends StatelessWidget {
      @override
      Widget build(BuildContext ctxt) {
        // TODO: implement build
        return Scaffold(
          body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Enchanted'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(onPressed: () {
                      Navigator.pushNamed(ctxt, '/information');
                    }, child: Text('PreRequisite'),),
                  ],
                )
              ],
            ),
          ),
          ),);
      }

    }
    class information extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
          body: Center(
          child: Text('Tapped'),
        ),);
      }
    }







