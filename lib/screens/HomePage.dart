import 'package:flutter/material.dart';
import 'package:travelworkshop/widget/city.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        title: Text("Your City Guide"),
        centerTitle: true,

      ),*/
      /*drawer: Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("usename"),
            accountEmail: Text("User@abc.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.lightBlueAccent,
                  size: 50,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.lightBlueAccent,),
          ),
          ListTile(onTap: () {},
            title: Text("places"),
            leading: Icon(
              Icons.place,
              color: Colors.lightBlueAccent,
            ),
          ),
          ListTile(onTap: () {},
            title: Text("hotels"),
            leading: Icon(
              Icons.hotel,
              color: Colors.blue,
            ),
          ),
          ListTile(onTap: () {},
            title: Text("city"),
            leading: Icon(
              Icons.location_city,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      ),*/
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  child:
              Stack(
                children: [
                  Image.network("https://image.freepik.com/free-photo/chair-table-dinning-beach-sea-with-blue-sky_74190-6094.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20),
                    child: Text("Explore the City",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90,left: 20),
                    child: Text("with exciting places",style: TextStyle(
                        fontSize: 30,

                        color: Colors.white
                    ),),
                  )
                ],
             )
              ),
              City()
            ],
          )
          ,
        ),
      ),
    );
  }
}
