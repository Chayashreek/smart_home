import 'package:flutter/material.dart';
import 'package:smart_login/user_dialog.dart';
import 'package:smart_login/group_dialog.dart';
import 'package:smart_login/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFlutterList(),
      title: "Add device",
    );
  }
}

class MyFlutterList extends StatefulWidget {
  //const MyFlutterList({Key? key}) : super(key: key);

  @override
  _MyFlutterListState createState() => _MyFlutterListState();
}

class _MyFlutterListState extends State<MyFlutterList> {
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    void addUserData(User user) {
      setState(() {
        userList.add(user);
      });
    }

    void showUserDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddUserDialog(addUserData),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }



    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF03989e),
        onPressed: showUserDialog,
        child: Icon(Icons.add,),

      ),
      appBar: AppBar(
        backgroundColor: Color(0XFF03989e),
        title: Text("KOKO BRICKS"),

      ),
      body: Container(

        height: MediaQuery
            .of(context)
            .size
            .height * 0.75,
        child: ListView.builder(
          itemExtent: 250,
          itemBuilder: (ctx, index) {
            return Card(

              margin: EdgeInsets.all(30),
              elevation: 10,
              child: ListTile(


                title: Text(
                  userList[index].username,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical:10.0,horizontal:15.0),


                trailing:Wrap(
                  spacing:12,
                  children:[
                    FloatingActionButton(

                        backgroundColor: Color(0XFF03989e),

                        child: Icon(Icons.add,),


                    ),

                  ],

                ),


              ),

            );
          },
          itemCount: userList.length,

        ),
      ),
    );
  }
}
