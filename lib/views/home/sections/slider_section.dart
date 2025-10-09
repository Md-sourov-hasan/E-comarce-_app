import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>sliders=[
      'https://img.freepik.com/free-vector/horizontal-banner-template-black-friday-sales_23-2150867247.jpg?semt=ais_hybrid&w=740&q=80',
      'https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg?w=360',
      'https://img.freepik.com/premium-vector/weekend-special-sale-tag-banner-design-template-marketing-special-offer-promotion-retail-back_680598-892.jpg?semt=ais_hybrid&w=740&q=80',

    ];
    return CarouselSlider.builder(
      itemCount: sliders.length,
       itemBuilder: (context,itemIndex,PageViewIndex){
        return Container(
          width: double.infinity,
          
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(sliders[itemIndex]),
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
  }
}