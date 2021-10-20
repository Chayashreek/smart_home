import 'package:flutter/material.dart';
import 'package:smart_login/models/user.dart';

class AddUserDialog extends StatefulWidget {
  final Function(User) addUser;
  AddUserDialog(this.addUser);

  // final Function(Group) addGroup;
  // AddGroupDialog(this.addGroup);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {

  @override
  Widget build(BuildContext context) {

    Widget buildTextField(String hint,TextEditingController controller){
      return Container(
        margin:EdgeInsets.all(15),
        child:TextField(
          decoration:InputDecoration(
            labelText:hint,
            border:OutlineInputBorder(
              borderSide: BorderSide(
                color:Colors.black38,
              ),
            ),
          ),
          controller:controller,
        ),
      );
    }


    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    //var usernameController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(8),
      height:300,
      width:400,
      child:SingleChildScrollView(
        child:Column(
          children: [
            Text('Add device',style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize:32,
              color:Color(0XFF03989e),
            )),


            buildTextField('Device name', usernameController),
            buildTextField('Device id', emailController),

            ElevatedButton(onPressed:(){
              final user =User(usernameController.text,emailController.text);
              widget.addUser(user);
              Navigator.of(context).pop();

            },
              child: Text('Add Device'),
              style:ElevatedButton.styleFrom(
                primary:Color(0XFF03989e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
