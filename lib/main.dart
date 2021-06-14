import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Bilik gue"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            
            HomePage("aircon",Icons.ac_unit),
            HomePage("tv",Icons.tv),
            HomePage("bilik",Icons.lightbulb),
            HomePage("tandas",Icons.bathtub),
            HomePage("charger",Icons.smartphone),
            HomePage("pintu",Icons.lightbulb)
          ],
        ),
      ),
    );
  }
}



class HomePage extends StatefulWidget {

  final String bilik;
  final IconData iconbilik;
  const HomePage(this.bilik,this.iconbilik);
  
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Colors.yellow,
      //child: Text("Content"),
      child: ListTile(
        leading: Icon(widget.iconbilik),
        title: Text(widget.bilik),
        subtitle: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(1.0),
                  primary: Colors.black,
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(fontSize: 15),
                  
                ),
                onPressed: () {
                
                },
                 child: const Text('Button'),
                 
                 
        ),
        
        //trailing: Text("bakal ditukar"),
        
      ),
    );
  }
}
