import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/screens/categories_screen.dart';

class DrawerNaigation extends StatefulWidget {
  const DrawerNaigation({Key? key}) : super(key: key);

  @override
  _DrawerNaigationState createState() => _DrawerNaigationState();
}

class _DrawerNaigationState extends State<DrawerNaigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Todo"),
                accountEmail: Text("Category & Priority Based Todo App"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(Icons.filter_list),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Todo())
                );
              },
            ),

            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.view_list),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CategoriesScreen())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
