import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
      ),
      body: Column(
        children: [
         ProductSliderSection()
        ],
      ),
    );
  }
}

class ProductSliderSection extends StatefulWidget {
  const ProductSliderSection({super.key});

  @override
  State<ProductSliderSection> createState() => _ProductSliderSectionState();
}

class _ProductSliderSectionState extends State<ProductSliderSection> {
  List<String>sliders=[
      'https://xcdn.next.co.uk/common/items/default/default/itemimages/3_4Ratio/product/lge/C83639s6.jpg?im=Resize,width=750',
      'https://rlv.zcache.com/um_the_element_of_confusion_funny_chemistry_t_shirt-rf2fd988342b74336aac9ba5efabddbf6_jg9db_644.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLFhQVf8SpKWPMu8wBUqfI5w6gHM5DHCMS4bweECvva5wxNgCifpSBI_9PSIcpWqIgiQ&usqp=CAU',
    ];
    int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    
    return  Stack(
      children: [
        CarouselSlider.builder(
                itemCount: sliders.length,
                 itemBuilder:(context,index,pageIndex){
                  return Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image:NetworkImage(sliders[index]),
                        fit: BoxFit.cover,
                        ),
                    ),
                  );
                 },
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: false,
                    viewportFraction: 1,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentIndex=index;
                      });
                    }
                  )
                  ),
                  Positioned(
                    bottom: 10,
                    child: PageViewDotIndicator(
                      currentItem: currentIndex,
                       count: sliders.length,
                         unselectedColor: Colors.white.withOpacity(0.2),
                         selectedColor: Colors.white,
                         ),
                  ),
      ]
    );
  }
}