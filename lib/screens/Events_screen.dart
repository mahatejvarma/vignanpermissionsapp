import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class EventScreen extends StatelessWidget {
  static const routeName='/event-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'VIGNAN',
          style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
           DropdownButton(
              underline: Container(),
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              items: [
                DropdownMenuItem(
                  child: Container(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 10),
                      Text('Logout')
                    ],
                  )),
                  value: 'logout',
                )
              ],
              onChanged: (item) {
                if (item == 'logout') {
                  FirebaseAuth.instance.signOut();
                }
              })
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}