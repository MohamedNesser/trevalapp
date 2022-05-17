import 'package:flutter/material.dart';
import 'package:login_form/Screens/Screen_Travel.dart';

class categoryitems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  void Slecttravel(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/catogery_trip', arguments: {
      'title': title,
      'id': id,
    });
  }

  categoryitems(
      @required this.title, @required this.imageUrl, @required this.id);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => Slecttravel(context),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
