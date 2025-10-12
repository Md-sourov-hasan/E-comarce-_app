import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:FirebaseFirestore.instance.collection('baners').snapshots(),
       builder: (context,snapshot){
       if(snapshot.connectionState==ConnectionState.waiting){
        return Center(
          child: CircularProgressIndicator(),
        );
       }
       return CarouselSlider.builder(
      itemCount: snapshot.data!.docs.length,
       itemBuilder: (context,itemIndex,PageViewIndex){
        return Container(
          width: double.infinity,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: NetworkImage(snapshot.data!.docs[itemIndex]['image']),
            fit: BoxFit.cover,
            )
          ),
        );
       },
       options: CarouselOptions(
            height: 120,
            
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        );
       },
       );
  }
}