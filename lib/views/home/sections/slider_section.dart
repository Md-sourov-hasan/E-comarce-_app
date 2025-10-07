import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>sliders=[
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwowslider.com%2Fcarousel-slider-showy-carousel-demo.html&psig=AOvVaw2dH6y8RFOEbCaDlaoLL2o5&ust=1759896395513000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPj1iY-bkZADFQAAAAAdAAAAABAS"
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.open-dc.gov%2Fpretty-slider&psig=AOvVaw2dH6y8RFOEbCaDlaoLL2o5&ust=1759896395513000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPj1iY-bkZADFQAAAAAdAAAAABAa"
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