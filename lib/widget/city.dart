import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelworkshop/model/travel.dart';
import 'package:travelworkshop/screens/cityDetailPage.dart';
class City extends StatefulWidget {
  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        itemCount: cities.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context,index){

          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_)=>CityDetailPage(cities[index])
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        tag: cities[index].cityName,
                        child: Image.network(cities[index].cityImage,
                          height: 400,
                          width: 200,
                          fit: BoxFit.cover,),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.place,color: Colors.white,size: 15,),
                             Text(cities[index].cityName,style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w600
                             ),)
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 25),
                           child: Text(cities[index].countryName,style: TextStyle(
                               color: Colors.white,
                               fontSize: 15,
                               fontWeight: FontWeight.w600
                           ),),
                         )
                       ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );

        });
  }
}
