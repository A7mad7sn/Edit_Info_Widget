import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green ,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body :
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("    Edit Profile",textScaleFactor: 2.0),
            ],
          ),

          Image(image: AssetImage("images/Admin-icon.png"),width: 100,height: 100),

          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
              labelText: "Full Name",
              hintText: "Enter Your Name",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
              labelText: "E-mail",
              hintText: "Enter Your Email",
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
              labelText: "Password",
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined,)) ,
              hintText: "Enter Your Password",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
              labelText: "Location",
              hintText: "Enter Your Location",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: Save, child: Text("Save"),style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 50,right: 50))),
              ElevatedButton(onPressed: Cancel, child: Text("Cancel"),style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 50,right: 50))),
            ],
          ),
        ],
      ),
    );
  }
  void Save()
  {
    print("Data Saved");
  }
  void Cancel()
  {
    print("Canceled");
  }
}