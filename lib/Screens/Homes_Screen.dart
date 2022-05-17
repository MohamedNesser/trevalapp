import 'package:flutter/material.dart';
import '../Data_gatogry.dart';
import '../Wedget/Category_itams.dart';
class homescreen extends StatelessWidget {
  const homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("travel app")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(

           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
             childAspectRatio: 7/8,
             mainAxisSpacing: 10,
             crossAxisSpacing: 10,
           ),
          children: Categorydata.map(
              (catogreydata)=>categoryitems(
                  catogreydata.title,
                  catogreydata.imageUrl
              ,catogreydata.id
              )

          ).toList(),
        ),
      ),
    );
  }
}
