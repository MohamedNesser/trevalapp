import 'package:flutter/material.dart';
import '../Wedget/Trip_itams.dart';
import '../Data_gatogry.dart';
import 'package:collection/collection.dart';

class detalestrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TripID = ModalRoute.of(context).settings.arguments  ;
   final filltertrips=Trips_data.firstWhere((trip) =>trip.id==TripID,
       );
    return Scaffold(
      appBar: AppBar(
        title: Text('$TripID'),
      ),
      body: Column(
      children: [
        Text(filltertrips.title)
      ],
      ),
    );
  }
}
