import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("title tabbar"),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.add_alarm),
              text: "Earth",
            ),
            Tab(
              icon: Icon(Icons.account_box),
              text: "is",
            ),
            Tab(
              icon: Icon(Icons.add),
              text: "Very-Cute",
            )
          ],),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.add_alarm),
            Icon(Icons.account_box)
          ],
        ),
      ),
    );
  }

}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState(); //return ตัวลูกไปหาแม่; return class ข้้างล่าง เพราะอะไรไม่รู้?
//   }

// }


// class MyHomePageState extends State<MyHomePage> { //อันล่าง entends แม่ ละอันบนลงมาล่าง
//   int counter = 0; //แสดงผ๋ล
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("hello World!!"),
//       ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("$counter"),
//             Text("value"),
//             Text("data")
//           ],
//         ), //ตัว text เป็น child ของ Center

//         //stateless เหมาะกับใช้ครั้งเดียวเลิก แสดงผลไม่ต้องจำ เบากว่า จำเป็น
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             setState(() {
//               counter++;
//             });  // ต้องตั้ง setState
//             print("Conter value $counter");
//           },
//         )//ปุ่มอะไรสักอย่าง,
      
//     );
//   }
//   }


// class MyHomePage extends StatelessWidget {
//   int counter = 0; //แสดงผ๋ล

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
    // return Scaffold(
//       appBar: AppBar(
//         title: Text("hello World!!"),
//       ),
//         body: Text("$counter"),

//         //stateless เหมาะกับใช้ครั้งเดียวเลิก แสดงผลไม่ต้องจำ เบากว่า จำเป็น
//         floatingActionButton: RaisedButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             counter++;
//             print("Conter value $counter");
//           },
//         )//ปุ่มอะไรสักอย่าง,
      
//     );
//   }
  
// }