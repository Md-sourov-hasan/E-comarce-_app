import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_app/views/cart.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


class ProductDetailsView extends StatelessWidget {
  final Map<String,dynamic> product;
  const ProductDetailsView({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ProductSliderSection(product: product,),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product['title'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(height: 3,),
                 Row(
                          children: [
                            Text(
                              "৳${product['discount_price'] ?? product['original_price']}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (product['discount_price'] != null) ...[
                              const SizedBox(width: 5,),
                              Text(
                                '৳${product['original_price']}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ]
                          ],
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        SizedBox(height: 5,),
                        Text(product['description'],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, justo vel tincidunt tempor, libero enim laoreet eros, in sollicitudin nunc lacus sit amet nibh. Curabitur blandit, orci nec dictum facilisis, urna tortor tincidunt nisl, non elementum odio felis nec nulla. Suspendisse bibendum, erat at tristique interdum, magna ipsum laoreet justo, in viverra libero risus ac velit. Quisque ultricies ex id nibh facilisis, sed dapibus turpis facilisis. Nullam finibus risus et orci tincidunt, vitae facilisis justo volutpat. Sed et sapien fringilla, vehicula velit non, gravida purus.',
                        textAlign: TextAlign.justify,
                        ),
              ],
             ),
           )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            ElevatedButton(
              onPressed:(){
                CartView();
              },
               child: Text('Add to card')
              )
           ],
        ),
      ),
    );
  }
}

class ProductSliderSection extends StatefulWidget {
  final Map<String,dynamic> product;
  const ProductSliderSection({super.key,required this.product});

  @override
  State<ProductSliderSection> createState() => _ProductSliderSectionState();
}

class _ProductSliderSectionState extends State<ProductSliderSection> {
  // List<String>sliders=[
  //     'https://www.aazbd.com/wp-content/uploads/2023/08/SOLID-GRAY-scaled.jpg',
  //     'https://fabrilife.com/products/6465ff10c753e-square.jpg',
  //     'https://twelvebd.com/cdn/shop/files/AJ-TSHB-TM24-07S-0285_18.jpg?v=1756707684',
  //   ];
    int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final gellary=widget.product['gellary'];
    return  Stack(
      children: [
        CarouselSlider.builder(
                itemCount: gellary.length,
                 itemBuilder:(context,index,pageIndex){
                  return Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image:NetworkImage(gellary[index]),
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
                       count: gellary.length,
                         unselectedColor: Colors.white.withOpacity(0.2),
                         selectedColor: Colors.white,
                         ),
                  ),
      ]
    );
  }
}