import 'package:flutter/material.dart';
import 'package:travelworkshop/model/hotel.dart';
import 'package:travelworkshop/model/travel.dart';
import 'package:travelworkshop/widget/Hotels.dart';

class CityDetailPage extends StatefulWidget {
  final City cities;

  CityDetailPage(this.cities);

  @override
  _CityDetailPageState createState() => _CityDetailPageState();
}

class _CityDetailPageState extends State<CityDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.6),
        title: Hero(
          tag: "cityName",
          child: Text(widget.cities.cityName),
        ),
        centerTitle: true,
      ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 200,
                child: Hero(
                  tag: widget.cities.cityName,
                  child: Image.network(
                    widget.cities.cityImage,
                    height: 300,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Attractions",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),//attractionblock
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: widget.cities.cityPlaces.length,
                    itemBuilder: (context,index){

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(widget.cities.cityPlaces[index].placeImage,height: 100,width: 100,fit: BoxFit.cover,)),
                               SizedBox(height: 5,),
                            Text(widget.cities.cityPlaces[index].placeName,style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),),
                          ],
                        )),
                      );
                    }),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Hotels",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            ),
            HotelsPage(widget.cities.cityHotel),
          ],
        ),
      ),
    );
  }
}
