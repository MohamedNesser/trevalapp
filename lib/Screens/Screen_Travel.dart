import 'package:flutter/material.dart';
import '../Wedget/Trip_itams.dart';
import '../Data_gatogry.dart';
class travels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageroute =
        ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catogryid = pageroute['id'];
    final catogrytitle = pageroute['title'];
    final filltertrips=Trips_data.where((trip) {
      return trip.categories.contains(catogryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(catogrytitle)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return tripitam(
            id: filltertrips[index].id,
            title: filltertrips[index].title,
            imageUrl: filltertrips[index].imageUrl,
            tripType: filltertrips[index].tripType,
            duration: filltertrips[index].duration,
            season: filltertrips[index].season,
          );

        },
        itemCount:filltertrips.length ,
      ),
    );
  }
}
