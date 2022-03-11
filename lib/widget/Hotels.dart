import 'package:flutter/material.dart';
import 'package:travelworkshop/model/hotel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travelworkshop/model/travel.dart';

class HotelsPage extends StatefulWidget {
  final List<Hotel> hotels;

  HotelsPage(this.hotels);
  @override
  _HotelsPageState createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  var rating = 4.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.hotels.length,
          itemBuilder: (context, index) {
            return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Column(
              children: [
                  Row(
                    children: [
                      Image.network(widget.hotels[index].hotelImage,height: 80,width: 80,fit: BoxFit.cover,),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.hotels[index].hotelName,style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),

                              Text(widget.hotels[index].hotelAddress),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        SmoothStarRating(
                        rating: double.parse(widget.hotels[index].hotelRating),
                          isReadOnly: false,
                        size: 10,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 3.0,
                        onRated: (value) {
                          print("rating value -> $value");
                          // print("rating value dd -> ${value.truncate()}");
                        },
                      ),
                          SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)
                            ),

                            child: Center(child: Text("\$100")),
                          )

                        ],
                      ))

                    ],
                  ),
              ],
            )),
                ));
          }),
    );
  }
}
