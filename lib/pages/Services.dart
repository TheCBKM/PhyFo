// import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phyfo/Widgets/ServiceTile.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: StreamBuilder(
            stream: Firestore.instance
                .collection("Services")
                .orderBy("p", descending: false)
                .snapshots(),
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              final documents = snapshot.data.documents;
              print(documents.length);
              return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (ctx, i) {
                    return ServiceTile(
                        documents[i]["Title"] ?? "NA",
                        documents[i]["Desc1"] ?? "NA",
                        documents[i]["Desc2"] ?? "NA",
                        documents[i]["Img"] ??
                            "https://cloud2.spineuniverse.com/sites/default/files/imagecache/large-content/wysiwyg_imageupload/3998/2019/08/14/electric_back_pain_shutterstock_679224700.jpg");
                  });
            }));
  }
}

//  CarouselSlider(
//           options: CarouselOptions(
//               height: MediaQuery.of(context).size.height / 2,
//               autoPlay: true,
//               autoPlayCurve: Curves.fastOutSlowIn,
//               autoPlayInterval: Duration(milliseconds: 3000)),
//           items: [1, 2, 3, 4, 5].map((i) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     // margin: EdgeInsets.symmetric(horizontal: 5.0),
//                     // decoration: BoxDecoration(color: Colors.black12),
//                     child: Image(
//                       height: MediaQuery.of(context).size.height,
//                       width: MediaQuery.of(context).size.width,
//                       image: AssetImage('assets/c${(i % 2) + 1}.png'),
//                     ));
//               },
//             );
//           }).toList(),
//         ),
