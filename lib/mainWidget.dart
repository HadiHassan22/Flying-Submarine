import 'package:flutter/material.dart';
import 'classes.dart';

class MainWidget extends StatelessWidget {
  Hotel hotel;

  MainWidget(this.hotel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("Booking App"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.location_city,
                      color: Colors.yellow,
                      size: 32,
                    ),
                    Column(children: [
                      Text(
                        hotel.location.city,
                        style: TextStyle(fontSize: 18, color: Colors.yellow),
                      ),
                      Text(
                        hotel.location.country,
                        style: TextStyle(color: Colors.yellow),
                      )
                    ])
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        hotel.rooms.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.hotel,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              )),
          Container(
              color: Colors.white,
              width: 600,
              height: 600,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "image.jpg",
                      fit: BoxFit.cover,
                    ),
                    Row(children: [
                      Text(
                        hotel.name,
                        style: TextStyle(fontSize: 32, color: Colors.green),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      )
                    ]),
                    Text(
                      hotel.description,
                      style: TextStyle(color: Colors.green),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Text(
                                    "Share",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Text(
                                    "Phone",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Text(
                                    "Location",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ))
                        ]),
                  ])),
          SizedBox(
              width: 600,
              child: RaisedButton(
                onPressed: () {
                  print("button pressed");
                },
                color: Colors.green,
                child: Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
