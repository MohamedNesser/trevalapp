import 'package:flutter/material.dart';
import '../Models/Tripes.dart';

class tripitam extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Season season;
  final TripeType tripType;
  String get seasonn {
    switch (season) {
      case Season.Winter:
        return 'الشتاء';
        break;
      case Season.Spring:
        return 'الربيع';
        break;
      case Season.Autumn:
        return 'الخريف';
        break;
      case Season.Summer:
        return 'الصيف';
        break;
      default:
        return ' غير معروف';
    }
  }

  String get triptype {
    switch (tripType) {
      case TripeType.Activities:
        return "انشطه";
        break;
      case TripeType.Exploration:
        return 'استكشافيه';
        break;
      case TripeType.Recover:
        return 'نقاهه';
        break;
      case TripeType.Therapy:
        return 'معالجه';
        break;
      default:
        return ' غير معروف';
    }
  }

  tripitam(
      {@required this.id,
      @required this.title,
      @required this.season,
      @required this.imageUrl,
      @required this.duration,
      @required this.tripType});
  void selecttrip(BuildContext context) {
    Navigator.of(context).pushNamed('/detalescreens', arguments: {
       id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecttrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8)
                      ],
                          stops: [
                        0.6,
                        1
                      ])),
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.blue,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$duration ايام',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(seasonn)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.blue,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(triptype)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
